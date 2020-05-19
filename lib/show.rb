class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.map do |char|
      char.salary
    end.sum
  end

  def highest_paid_actor
    @characters.max_by do |char|
      char.salary
    end.actor
  end

  def actors
    @characters.map do |char|
      char.actor
    end
  end

end
