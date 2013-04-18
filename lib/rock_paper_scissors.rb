require "rock_paper_scissors/version"

module RockPaperScissors
  def self.loaded?() true end
end

module Choosable
  def choose
    :rock
  end
end

class Strategy 
  include Choosable
end


module LastPlayChooser
  def choose

  end
end

module Plays
  def self.rock
    :rock
  end
end

class StrategySelector
  def select
  end
end

class Player
  attr_accessor :strategy
  def initialize(options={})
    @strategy = Strategy.new
  end

end

