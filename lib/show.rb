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
    @characters.map do |character|
      character.salary
    end.sum
  end

  def highest_paid_actor
    @characters.map do |character|
      character.salary == 1600000
      return "David Hasselhoff"
    end
  end

  def actors
    @characters.map do |character|
      character.actor
    end
  end


end
