module Blackjack
  class Game
    attr_accessor :deck, :player, :dealer

    def initialize
      @deck = Deck.new
      @deck.shuffle!
      @dealer = Blackjack::Dealer.new(self)
      @player = Blackjack::Player.new(self)
      @board = Blackjack::Board.new(self)
    end

    def deal_hand(player)
      player.hand.draw(@deck, 2)
    end

    def declare_winner
      if @player.get_points > @dealer.get_points && !@player.bust? || @dealer.bust?
        return "Player"
      elsif @player.get_points < @dealer.get_points && !@dealer.bust? || @player.bust?
        return "Dealer"
      else
        return "Tie"
      end
    end

    def play_game
      @dealer.deal_hand(@dealer)
      @dealer.deal_hand(@player)
      @board.print_board
      if @dealer.blackjack? && @player.blackjack?
        @board.print_board(true)
        return puts "Both players got blackjack. What are the chances!?"
      elsif @dealer.blackjack?
        @board.print_board(true)
        return puts "Dealer had blackjack! You lose :("
      elsif @player.blackjack?
        @board.print_board(true)
        return puts "You had blackjack! You win! :)"
      end
      while !@player.stand_status && !@player.bust?
        @player.make_move
        @board.print_board
      end
      if @player.bust?
        @board.print_board(true)
        return puts "The player busted. Dealer wins."
      end
      while !@dealer.stand_status && !@dealer.bust?
        @dealer.make_move
        @board.print_board(true)
      end
      return puts "The winner is: #{declare_winner}"
    end
  end
end
