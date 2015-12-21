module Blackjack
  class Dealer < Blackjack::Player
    def make_move
      if get_points >= 17
        stand
      else
        hit
      end
    end
  end
end
