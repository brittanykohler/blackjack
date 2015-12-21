require 'spec_helper'

describe Blackjack::Game do
  before :each do
    @game = Blackjack::Game.new
    @player = Blackjack::Player.new(@game)
  end

  describe "initialize" do
    it "creates a new game instance" do
      expect(@game).to be_an_instance_of Blackjack::Game
    end
  end

  describe "#deal_hand" do
    it "deals 2 cards" do
      @game.deal_hand(@player)
      expect(@player.hand.count).to eq 2
    end
  end

  describe "hit" do
    it "adds a card to the player's hand" do
      @game.hit(@player)
      expect(@player.hand.count).to eq 1
    end
  end

  describe "stand" do
    it "changes the stand variable to true" do
      @game.stand(@player)
      expect()
    end
  end
end
