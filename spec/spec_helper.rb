require 'simplecov'
SimpleCov.start
require 'pry'
require './lib/blackjack'

RSpec.configure do |config|
  config.order = 'random'
end
