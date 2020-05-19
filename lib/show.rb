require 'pry'

class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.sum do |character|
      character.salary
    end
  end

  def highest_paid_actor
    actor = @characters.max_by do |character|
      character.salary
    end
    actor.actor
  end

  def actors
    ord_characters = @characters.sort_by do |character|
      character.actor[0]
    end
    characters.map do |character|
      character.actor
    end
  end
end
