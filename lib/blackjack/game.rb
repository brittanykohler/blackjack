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
      @dealer.deal_hand(@dealer)
      @dealer.deal_hand(@player)
      if @dealer.blackjack?
        puts "Dealer had blackjack! You lose :("
      elsif @player.blackjack?
        puts "You had blackjack! You win! :)"
      end
    end
  end
end
