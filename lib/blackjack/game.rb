module Blackjack
  class Game
    attr_accessor :deck

    def initialize
      @deck = Deck.new
      @deck.shuffle!
    end

    def deal_hand(player)
      player.hand.draw(@deck, 2)
    end
  end
end
