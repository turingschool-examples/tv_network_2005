class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = Array.new(characters)
  end

  def total_salary
    (@characters[0].salary) +
    (@characters[1].salary)
  end

  def highest_paid_actor
    character = @characters.max_by do |character|
      character.salary
    end
    character.actor
  end
end
