require 'spec_helper'

describe Blackjack::Dealer do
  before :each do
    @game = Blackjack::Game.new
    @dealer = Blackjack::Dealer.new(@game)
    @ace = Card.new(rank="Ace")
    @jack = Card.new(rank="Jack")
    @two = Card.new(rank = 2)
    @seven = Card.new(rank = 7)
    @queen = Card.new(rank = "Queen")
  end

  describe "#make_move" do
    it "stands at 17+" do
      @dealer.hand << @jack
      @dealer.hand << @jack
      @dealer.make_move
      expect(@dealer.stand_status).to eq true
    end
    it "hits <17" do
      @dealer.hand << @jack
      @dealer.hand << @two
      @dealer.make_move
      expect(@dealer.stand_status).to eq false
      expect(@dealer.hand.count).to eq 3
    end
  end
end
