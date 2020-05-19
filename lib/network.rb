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
    characters = @shows.map do |show|
      show.characters
    end.flatten!
    characters.find_all do |character|
      character.salary > 500_000 &&
      character.name == character.name.upcase
    end
  end

  def actors_by_show
    sorted = {}
    @shows.each do |show|
      sorted[show] = show.actors
    end
    sorted
  end
end
