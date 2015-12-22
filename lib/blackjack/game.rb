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

    def declare_winner
      if @player.get_points > @dealer.get_points
        return "Player"
      elsif @player.get_points < @dealer.get_points
        return "Dealer"
      else
        return "Tie"
      end
    end

    def play_game
      @dealer.deal_hand(@dealer)
      @dealer.deal_hand(@player)
      if @dealer.blackjack? && @player.blackjack?
        return puts "Both players got blackjack. What are the chances!?"
      elsif @dealer.blackjack?
        return puts "Dealer had blackjack! You lose :("
      elsif @player.blackjack?
        return puts "You had blackjack! You win! :)"
      end
      while !@player.stand_status && !@player.bust?
        @player.make_move
      end
      return puts "The player busted. Dealer wins" if @player.bust?
      while !@dealer.stand_status && !@dealer.bust?
        @dealer.make_move
      end
      return puts "The winner is: #{declare_winner}"
    end
  end
end
