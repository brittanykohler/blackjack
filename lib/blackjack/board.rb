module Blackjack
  class Board
    def initialize(game)
      @game = game
    end

    def print_player_hand(player)
      puts "Player hand:"
      puts player.hand
    end

    def print_dealer_hand(dealer, gameover)
      puts "Dealer hand:"
      gameover ? (puts dealer.hand) : (puts dealer.hand[1])
    end

    def print_board(gameover = false)
      print %x{clear}
      print_player_hand(@game.player)
      print_dealer_hand(@game.dealer, gameover)
    end
  end
end
