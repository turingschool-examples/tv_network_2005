# I could def initialize and attr_reader all
# the methods with 1 line enumerables,
# but I'm not sure that is "best practice"...
# for instance:
# @total_salary = characters.sum { |character| character.info[:salary] }


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
    characters.sum do |character|
      character.info[:salary]
    end
  end

  def highest_paid_actor
    characters.max_by do |character|
      character.info[:salary]
    end.actor
  end

  def actors
    characters.map do |character|
      character.actor
    end
  end
end
