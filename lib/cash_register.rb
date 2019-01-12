
class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    @total += price * quantity
  end
  
  def apply_discount
    return "There is no discount to apply." if @discount.nil?
    @total *= 1-@discount/100.0
    "After the discount, the total comes to $#{@total.round}."
  end
  
end