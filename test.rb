# Try out ruby cards

require 'rubycards'
include RubyCards

hand = Hand.new
deck = Deck.new

deck.shuffle!

hand.draw(deck, 5)

puts hand
