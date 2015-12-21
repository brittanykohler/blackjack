# Try out ruby cards

require 'rubycards'
include RubyCards

hand = Hand.new
deck = Deck.new

deck.shuffle!

hand.draw(deck, 2)

puts hand
