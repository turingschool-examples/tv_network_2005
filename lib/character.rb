class Character
  attr_reader :salary, :name, :actor
  def initialize(name, actor, salary)
    @name = name
    @actor = actor
    @salary = salary
  end
end
