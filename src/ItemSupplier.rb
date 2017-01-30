#!/usr/bin/ruby
#load 'Config.rb'
class ItemSupplier
  def initialize()
    @items = GenerateItemList()
    #@items.each { |i| i.Dump() }
  end 

  def GenerateItemList()
    arr = Array.new 
    for i in 0..(CARD_COUNT_ARRAY.count-1)
      v = CARD_COUNT_ARRAY[i]
      for a in 1..v
        arr.push(Item.new(i+1))
      end
    end
    arr.shuffle
  end

  def GetItem()
    @items.pop()
  end

  def GetItemId()
    r = rand(1..100)
    case r
    when 1..20
      1
    when 21..45
      2
    when 46..58
      3
    when 59..70
      4
    when 71..80
      5
    when 80..88
      6
    when 89..95
      7 
    when 96..100
      8
    end 
  end 
end
