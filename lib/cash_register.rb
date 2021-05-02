require 'pry'

class CashRegister
  attr_accessor :item, :total, :quantity, :discount
  
  @@total_cost = Hash.new {|h,k| h[k] = []}  
  
  def initialize(discount = 20)
    @item = item 
    @total = 0.00  
    @discount = discount  
    @quantity = quantity 
    
    
  end
  
  
  def add_item(title, price, quantity = 1)
    
    
  def apply_discount
    @total -= (0.01 * @discount * @total).round(2) 
    if discount == 0.00 
      puts "No discount applied."
    else 
      puts "After the discount, the total comes to $#{@total}"
    end 
  end 

end 