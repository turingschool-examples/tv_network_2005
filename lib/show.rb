class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters_array)
    @name = name
    @creator = creator
    @characters = characters_array
  end


  def total_salary
    character_sals = []
    @characters.each do |char|
      char.character.find_all do |actors|
        character_sals << actors.salary
      end
    end
    character_sals.add


  end

  def highest_paid_actor

  end


end
