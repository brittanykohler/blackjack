module Blackjack
  class Dealer < Blackjack::Player
    def initialize(game)
      super(game)
    end
    def deal_hand(player)
      player.hand.draw(@game.deck, 2)
    end
    def make_move
      if get_points >= 17
        stand
      else
        hit
      end
    end
  end
end
