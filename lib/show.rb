class Show

  attr_reader :name,
              :creator,
              :characters,
              :actors

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @total_salary = @characters[0].salary + @characters[1].salary
  end

  def highest_paid_actor
    @characters.max_by do |character|
      character.salary
    end.actor
  end

  def actors
    @characters.map do |character|
      character.actor
    end
  end

end
