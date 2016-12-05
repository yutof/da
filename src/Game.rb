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
@totalRound = 0
@totalAuctionCount = 0
@totalRemainingBudget = 0.0
@totalWinnerPoint = 0
@totalWinnerItemRatio = 0.0
@totalWinnerItemCount = 0
def PlayGame()
  am = AuctionManager. new
  am.SetPlayers(CreatePlayers())
  while am.isGameEnded == false
    am.Proceed()
  end
  #am.PrintResult()
  UpdateReportVariables(am)
end

def UpdateReportVariables(am)
  @totalRound += am.Round
  @totalAuctionCount += am.AuctionCount
  @totalRemainingBudget += am.AverageRemainingBudget
  @totalWinnerPoint += am.WinnerPoint
  @totalWinnerItemRatio += am.WinnersPurchaseRatio
  @totalWinnerItemCount += am.WinnerItemCount
end

def CreatePlayers()
  ps = Array.new
  for i in 1..PLAYER_NUM
    ps.push(Player.new(i))
  end
  ps
end

def PrintResult()
  tgc_f = TEST_GAME_COUNT.to_f
  s = "Round #{@totalRound}  Average:#{@totalRound.to_f/tgc_f}"
  s += "\nAuction #{@totalAuctionCount}  Average:#{@totalAuctionCount.to_f/tgc_f}"
  s += "\nBudget Average:#{@totalRemainingBudget/tgc_f}"
  s += "\nWinner Point Average:#{@totalWinnerPoint.to_f/tgc_f}"
  s += "\nWinner Item Count Average:#{@totalWinnerItemCount.to_f/tgc_f}"
  s += "\nWinner Item Ratio Average:#{@totalWinnerItemRatio.to_f/tgc_f}"
  puts s
end 

start = Time.now
puts "Start the game!"
for i in 1..TEST_GAME_COUNT
  PlayGame()
end

finish = Time.now
diff = finish - start
puts "Ended. Took #{diff}"

PrintResult()


