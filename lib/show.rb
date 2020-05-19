class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters # Array
  end

# @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
# @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
# @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])

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
