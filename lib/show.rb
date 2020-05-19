class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    characters.sum { |character| character.salary }
  end

  def highest_paid_actor
     top_billing = characters.max_by do |character|
       character.salary
     end
     top_billing.actor
  end
end
