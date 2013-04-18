require 'spec_helper'
require 'rock_paper_scissors'

describe Array do
  it "can be created with no arguments" do
    Array.new.must_be_instance_of Array
  end

  it "can be created with a specific size" do
    Array.new(10).size.must_equal 10
  end
end

describe RockPaperScissors do
  it 'can be loaded to prove that the tests are wired correctly' do
    RockPaperScissors.loaded?.must_equal true
  end
end

describe Strategy do
  it "must choose" do
    Strategy.new.must_respond_to(:choose)
  end

end


describe Choosable do  
  it "chooses a rock by default" do
    o = Object.new.extend(Choosable)
    o.choose.must_equal(Plays.rock)
  end
end

describe StrategySelector do
  
  it "selects a strategy" do
    StrategySelector.new.must_respond_to(:select)
  end
  # it "returns player's existing strategy by default" do

end

describe Player do
  it "responds to strategy" do
    Player.new.must_respond_to(:strategy)
  end

end
describe Game do
  it "can play a game" do
    Game.new.must_respond_to(:play)
  end


  describe "game after playing" do

    before do 
      @game = Game.new
      @game.play
    end

    it "can provide history" do
      Game.new.must_respond_to(:history)
    end
    
    it "provides a history array" do
      Game.new.play.must_respond_to(:first)
    end

    it "has a winner after playing a game" do
      @game.winner.wont_be_nil
    end
  end

    
end


