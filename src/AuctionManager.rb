#!/usr/bin/ruy
load 'Item.rb'
load 'ItemSupplier.rb'

class AuctionManager
  def initialize()
    @counter = 0
    @supplier = ItemSupplier.new()
    @ItemCounter = Hash.new
    @players = nil
  end

  def isGameEnded
    ended = false
    @ItemCounter.each do |k,v|
      if v > 3
        ended = true
        #puts "GameEnded #{@counter}"
      end
    end
    ended
  end

  def SetPlayers(ps)
    @players = ps
  end

  def PrintResult()
    #puts "Print Result!!"
    @players.each{|p|p.Dump()}
  end 
  def Proceed()
    @counter += 1
    i = GetItem()
    UpdateItemcunter(i)
    SetPlayerItem(i)
    ProceedAuction(i)
  end
  
  def SetPlayerItem(i)
    @players.each {|p| p.SetItem(i)}
    #end
  end

  def UpdateItemcunter(i)
    if @ItemCounter[i.Key] != nil
      @ItemCounter[i.Key] += 1
    else
      @ItemCounter[i.Key] = 1
    end
  end  

  def ProceedAuction(item)
    while item.RoundCounter < AUCTION_COUNT and item.Sold == false do
      #item.Dump()
      c = GetBiddingCount()
      if c > 0
        SellItemToHighestBidder(item)
      end
      item.IncrementCounter()# += 1
    end
  end

  def SellItemToHighestBidder(item)
    p = GetHighestBidder()
    p.Purchase(item, p.BiddingPrice) 
    item.MarkAsSold()
  end
  
  def GetHighestBidder()
    price = -10
    player = nil
    @players.each{ |p|
      op = p.CalculateBiddingPrice()
      if op > price
        price = op
        player = p
      end  
    }
    player
  end


  def GetBiddingCount()
    c = 0
    @players.each{|p| c += 1 if p.Bidding}
    c
  end

  def GetItem()
    @supplier.GetItem()
  end
end
