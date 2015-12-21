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
end
