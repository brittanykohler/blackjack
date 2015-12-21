module Blackjack
  class Player
    def initialize()
      @hand = Hand.new
    end

    def deal_hand
      @hand.draw(deck, 2)
    end
  end
end
