class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    @shows.map do |show|
      show.characters.find_all do |character|
        character.name.upcase == character.name &&
        character.salary > 500_000
      end
    end.flatten
  end

  # I struggled on the method below for nearly an hour - I tried using inject/reduce as well as the below.

  def actors_by_show
    @shows.each_with_object({}) do |show, hash|
      show.characters.each do |detail|
        hash[show] = detail.actor
      end
    end
  end

end
