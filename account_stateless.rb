module Sales
  def overdue_balance(cost, paid_amount, fee)
    cost - paid_amount + fee
  end

  def cost(products_list)
    products_list.map(:price).reduce(:+)
  end
end

Sales.overdue_balance(
  cost(products), 
  car_sales.paid_amount, 
  fee_calculation(contract))


