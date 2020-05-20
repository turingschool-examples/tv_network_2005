
class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows =[]
  end

  def add_show(show)
    @shows << show
  end

  def actors_by_show
    char_group= Hash.new
    @shows.each do |show|
      char_group[show] = show.actors
    end
    char_group
  end



  def main_characters
    @shows.map do|show|
      show.characters.select do |char|
        char.salary > 500_000
      end
    end.flatten
  end
end
