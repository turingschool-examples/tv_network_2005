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
    @characters.map.sum do |character|
      character.salary
    end
  end

  def highest_paid_actor
    @characters.max_by { |c| c.salary }.actor
  end

  def actors
    @characters.collect do |character|
      character.actor
    end
  end
end
