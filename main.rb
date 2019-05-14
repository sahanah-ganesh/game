require 'pry'
require './players'
require './games'

# pp fight = Game.new
fight = Game.new
# pp player1 = Player.new("player 1")
player1 = Player.new("player 1")
# pp player2 = Player.new("player 2")
player2 = Player.new("player 2")

fight.ready(player1, player2)