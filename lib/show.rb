require './lib/character'

class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.sum(total = 0) do |character|
      total += character.salary
    end
    total
  end

  def highest_paid_actor
    @characters.max_by do |character|
       character.salary
    end.actor
  end
end
