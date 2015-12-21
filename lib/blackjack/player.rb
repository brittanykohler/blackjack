module Blackjack
  class Player
    attr_accessor :hand, :game, :stand_status

    def initialize(game)
      @hand = Hand.new
      @game = game
      @stand_status = false
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
      return get_points == 21 && has_ace?
    end

    def bust?
      return get_points > 21
    end

    def hit
      @hand.draw(@game.deck, 1)
    end

    def stand
      @stand_status = true
    end

    def make_move
      input = nil
      # while ["h", "s"].include?(input)
      while input != "h" || input != "s"
        puts "Press h for hit and s for stand"
        input = gets.chomp.downcase.strip
        binding.pry
        if input == "h"
          return hit
        elsif input == "s"
          return stand
        end
      end
    end
  end
end
