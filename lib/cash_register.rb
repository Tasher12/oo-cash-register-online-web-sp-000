require 'pry'

class CashRegister
  attr_accessor :item, :total, :quantity, :discount
  
  @@total_cost = Hash.new {|h,k| h[k] = []}  
  
  def initialize(discount = 0)
    @item = item 
    @total = 0  
    @discount = discount  
    @quantity = quantity 
    
    
  end
  
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
    
  def apply_discount
    @total -= @total * @discount / 100 
    if discount > 0  
      "After the discount, the total comes to $#{@total}."
    end 
  end 

end 