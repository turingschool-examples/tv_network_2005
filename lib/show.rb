class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    characters.inject(0) { |sum, character| sum + character.salary}
  end

  def highest_paid_actor
    (characters.max_by { |character| character.salary }).actor
  end

  def actors
    actors = []
    characters.select do |char|
      actors << char.actor
    end
    actors
  end
end
