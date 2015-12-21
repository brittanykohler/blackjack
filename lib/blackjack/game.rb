module Blackjack
  class Game
    def initialize
      @deck = Deck.new
      @deck.shuffle!
    end
  end
end
