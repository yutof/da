#!/usr/bin/ruby
#load 'AuctionManager.rb'
#require_relative 'AuctionManager.rb'
load 'AuctionManager.rb'
load 'Item.rb'
load 'Config.rb'
load 'Player.rb'

def puts(o)
  if PRINT_ENABLED
    super(o)
  end 
end

def PlayGame()
  am = AuctionManager. new
  am.SetPlayers(CreatePlayers())
  while am.isGameEnded == false
    am.Proceed()
  end
  am.PrintResult()
end

def CreatePlayers()
  ps = Array.new
  for i in 1..PLAYER_NUM
    ps.push(Player.new(i))
  end
  ps
end
puts "Start the game!"

PlayGame()

puts "Ended"

