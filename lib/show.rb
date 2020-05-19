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
    total = 0
    characters.each do |character|
        total += character.salary
    end
    total
  end

  def highest_paid_actor
    characters.max_by do |character|
      character.salary
    end.actor
  end

  def actors
    characters.map { |character| character.actor }
  end
end
