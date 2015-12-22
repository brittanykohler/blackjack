require 'pry'
require 'rubycards'
include RubyCards

require "./lib/blackjack/board"
require "./lib/blackjack/player"
require "./lib/blackjack/dealer"
require "./lib/blackjack/game"

game = Blackjack::Game.new
game.play_game
