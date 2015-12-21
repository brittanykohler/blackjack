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
end
