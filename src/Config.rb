#!/usr/bin/ruby

PRINT_ENABLED = true
#何回オークションするか
AUCTION_COUNT = 6
#一回のオークションでどれぐらい割引率が下がるか1.0で10%
DISCOUNT_RATIO_PER_AUCTION = 1.0

POINT_PER_PRICE = 0.109

PLAYER_NUM=4
REQUEST_NUM=3
PLAYER_BUDGET=100
TEST_GAME_COUNT=10

#CARD_COUNT_ARRAY = [20, 15, 13, 11, 9, 8, 6, 4]
CARD_COUNT_ARRAY = [0, 30, 18, 12, 9, 8, 6, 3]
CARD_REQUEST_DICT = {
    "1"=>[16, 4],
    "2" =>[12, 3],
    "3" =>[8, 2],
    "4" =>[6, 1],
    "5" =>[5, 1],
}
#CARD_COUNT_ARRAY = [0, 30, 18, 12, 9, 8, 6, 3]
#CARD_COUNT_ARRAY = [6, 5, 4, 3, 3, 2, 2, 1]
#CARD_COUNT_DICT =  { 1: 10, font_family: "Arial" } #{ 1 : 20, 2:15, 3:13, 4:11}
