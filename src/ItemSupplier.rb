#!/usr/bin/ruby
class ItemSupplier
  def initialize()
    end
  
  def GetItem()
    i = GetItemId()
    Item.new(i)
  end

  def GetItemId()
    r = rand(1..100)
    puts r
    case r
    when 1..30
      1
    when 31..50
      2
    when 51..66
      3
    when 67..78
      4
    when 79..88
      5
    when 89..94
      6
    when 95..98
      7 
    when 99..100
      8
    end 
  end 
end
