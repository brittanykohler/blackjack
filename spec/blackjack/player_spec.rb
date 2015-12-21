require 'spec_helper'

describe Blackjack::Player do
  before :each do
    @player = Blackjack::Player.new
    @ace = Card.new(rank="Ace")
    @jack = Card.new(rank="Jack")
    @two = Card.new(rank = 2)
    @seven = Card.new(rank = 7)
    @queen = Card.new(rank = "Queen")
  end

  describe "initialize" do
    it "creates a new player instance" do
      expect(@player).to be_an_instance_of Blackjack::Player
    end

    it "creates a new hand instance" do
      expect(@player.hand).to be_an_instance_of RubyCards::Hand
    end
  end

  describe "#get_points" do
    it "returns the number of points in hand" do
      @player.hand << @ace
      @player.hand << @jack
      expect(@player.get_points).to eq 21
      @player.hand << @two
      expect(@player.get_points).to eq 13
    end
  end

  describe "#blackjack?" do
    it "returns true if the hand has blackjack" do
      @player.hand << @ace
      @player.hand << @jack
      expect(@player.blackjack?).to be true
    end
    it "returns false if the hand doesn't have blackjack" do
      @player.hand << @ace
      @player.hand << @two
      expect(@player.blackjack?).to be false
    end
  end

  describe "#bust?" do
    it "returns true if the hand is busted" do
      @player.hand << @jack
      @player.hand << @jack
      @player.hand << @seven
      expect(@player.bust?).to be true
    end
    it "returns false if the hand isn't busted" do
      @player.hand << @jack
      @player.hand << @jack
      expect(@player.bust?).to be false
    end
  end


end
