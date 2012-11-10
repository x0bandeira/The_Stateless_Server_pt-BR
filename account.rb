class Sale
  attr_reader :contract
  attr_reader :products
  attr_reader :paid_amount

  def initialize(contract, products)
    @contract = contract
    @products = products
  end

  def overdue_balance
    unpaid_amount + contract.fee
  end

  def cost
    products.map(:price).reduce(:+)
  end

  def unpaid_amount
    cost - paid_amount
  end
end

customer_contract = FixedRateContract.new
car_sale = Sale.new(customer_contract, products)
car_sale.overdue_balance
