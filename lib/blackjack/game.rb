module Blackjack
  class Game
    attr_accessor :deck

    def initialize
      @deck = Deck.new
      @deck.shuffle!
      @dealer = Blackjack::Dealer.new(self)
      @player = Blackjack::Player.new(self)
    end

    def deal_hand(player)
      player.hand.draw(@deck, 2)
    end

    def play_game
    end
  end
end
