module Blackjack
  class Player
    attr_accessor :hand

    def initialize()
      @hand = Hand.new
    end

    def has_ace?
      (@hand.any? { |card| card.to_i == 14 }) ? (true) : (false)
    end


    def get_points
      points = 0
      @hand.each do |card|
        value = card.to_i
        if value <= 10
          points += value
        elsif value > 10 && value < 14
          points += 10
        else
          points += 11
        end
      end
      points -= 10 if has_ace? && points > 21
      return points
    end

    def blackjack?

    end
  end
end
