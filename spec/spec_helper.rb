require 'simplecov'
SimpleCov.start
require 'pry'
require './lib/blackjack'

Rspec.configure do |config|
  config.order = 'random'
end
