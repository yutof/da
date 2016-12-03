#!/usr/bin/ruby
#load 'AuctionManager.rb'
#require_relative 'AuctionManager.rb'
load 'AuctionManager.rb'
load 'Item.rb'

puts "test"
am = AuctionManager. new
#am.GetItem()

while am.isGameEnded == false
  am.Proceed()
end


puts "worked"

