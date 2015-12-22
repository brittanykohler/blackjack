require 'simplecov'
SimpleCov.start
require 'pry'
require 'rubycards'
include RubyCards

require "./lib/blackjack/board"
require "./lib/blackjack/player"
require "./lib/blackjack/dealer"
require "./lib/blackjack/game"

RSpec.configure do |config|
  config.order = 'random'
end
