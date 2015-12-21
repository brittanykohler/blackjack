module Blackjack
  class Game
    def initialize
      @deck = Deck.new
      @deck.shuffle!
    end

    def deal_hand(player)
      player.hand.draw(@deck, 2)
    end

    def hit(player)
      player.hand.draw(@deck, 1)
    end

  end
end
