class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = Array.new(characters)
  end
end
