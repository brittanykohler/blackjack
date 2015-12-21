require 'spec_helper'

describe Blackjack::Player do
  before :each do
    @player = Blackjack::Player.new
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
    before :each do
      ace = Card.new(rank="Ace")
      jack = Card.new(rank="Jack")
      @player.hand << ace
      @player.hand << jack
    end
    it "returns the number of points in hand" do
      expect(@player.get_points).to eq 21
    end
  end
end
