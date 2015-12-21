module Blackjack
  class Player
    attr_accessor :hand

    def initialize()
      @hand = Hand.new
    end

    def deal_hand
      @hand.draw(deck, 2)
    end
  end
end
