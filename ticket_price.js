var price = function(ticket, discount_calculation) {
  return discount_calculation(ticket.price);
};

var percentual_discount = function(fraction) {
  return function(price) {
    return price - (price * fraction);
  };
};

var normal_customer_discount = percentual_discount(.1);

var pro_bono_customer_discount = function(price) {
  return price / 2;
};

var price_for_contract = function(contract) {
  return function(price) {
    return price + contract.fee;
  };
};

var corporate_customer_discount = function(contract) {
  return _.compose(
    percentual_discount(.15), 
    price_for_contract(contract)
  );
);

var contract = { fee: 30.0 };
var ticket = { price: 200.00 };
var price_for_ticket = price(ticket, corporate_customer_discount(contract));

