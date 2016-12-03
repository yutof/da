#!/usr/bin/ruy
load 'Item.rb'
load 'ItemSupplier.rb'

class AuctionManager
  def initialize()
    @counter = 0
    @supplier = ItemSupplier.new()
    @ItemCounter = Hash.new
  end

  def isGameEnded
    #@counter > 100
    ended = false
    @ItemCounter.each do |k,v|
      if v > 3
        ended = true
        puts "GameEnded #{@counter}"
      end
    end
    ended
  end

  
  def Proceed()
    @counter += 1
    i = GetItem()
    UpdateItemcunter(i)
    ProceedAuction(i)
  end
  
  def UpdateItemcunter(i)
    if @ItemCounter[i.Key] != nil
      @ItemCounter[i.Key] += 1
    else
      @ItemCounter[i.Key] = 1
    end
  end  

  def ProceedAuction(item)
    puts "ProceedAuction"
    while item.RoundCounter < 6 do
      item.Dump()
      item.IncrementCounter()# += 1
    end
  end
 
  def GetItem()
    @supplier.GetItem()
  end
end
