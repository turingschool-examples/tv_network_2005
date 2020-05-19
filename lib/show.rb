class Show

  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    characters.map do |character|
      character.salary
    end.sum
  end

  def highest_paid_actor
    high_paid = characters.map do |character|
      character.salary
    end.max

    characters.find do |character|
      character.salary == high_paid
    end.actor

  end

  def actors
     characters.map do |character|
       character.actor
     end
  end

end
