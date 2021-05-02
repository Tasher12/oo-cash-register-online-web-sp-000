require 'pry'

class CashRegister
  attr_accessor :item, :total, :quantity, :discount
  
  @@total_cost = Hash.new {|h,k| h[k] = []}  
  
  def initialize(discount = 0.00)
    @item = item 
    @total = 0.00  
    @discount = discount  
    @quantity = quantity 
    
    
  end
  
  
  def add_item(title, price, quantity = 1)
    @@total_cost.store(title, price)
    price = quantity * price 
    self.total += price
  end    
    
  def apply_discount
    self.total -= (0.01 * @discount * @total).to_i 
    if discount > 0.00 
      puts "After the discount, the total comes to $#{self.total}"
    end 
  end 

end 