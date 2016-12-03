#!/usr/bin/ruby
load 'ItemMaster.rb'
class Item
  def initialize(id)
    @Id = id
    @master = ItemMaster.new(id)
    @counter = 0
  end
  def Price
    @master.Price - @master.Price/10*@counter
  end
 
  def Key
    "KEY#{@Id}ID?"
  end
   
  def RoundCounter
    @counter
  end 
  
  def IncrementCounter()
    @counter += 1
  end 

  def Dump()
    puts "Price:#{self.Price}  Points#{@master.Point}"
  end
    
end
