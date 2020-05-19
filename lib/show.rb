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
    characters.sum do |character|
      character.info[:salary]
    end
  end

  def highest_paid_actor
    characters.max_by do |character|
      character.info[:salary]
    end.actor
  end
end
