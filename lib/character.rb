require "pry"
class Character
  attr_reader :name, :actor, :salary
  def initialize(character)
    @character = character
  end

  def name
    @character[:name]
  end

  def actor
    @character[:actor]
  end

  def salary
    @character[:salary]
  end
end
