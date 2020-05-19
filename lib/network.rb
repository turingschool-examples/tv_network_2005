class Network
  attr_reader :name,
              :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    characters = @shows.map {|show| show.characters}.flatten
    main_characters = characters.find_all {|character| character.salary > 500000 || character.name == character.name.upcase}
  end
end
