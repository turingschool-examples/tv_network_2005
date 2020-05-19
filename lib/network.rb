
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
      @shows.group_by do |show|
        show
      end
  end

  def main_characters
    @shows.map do|show|
      show.characters.select do |char|
        char.salary > 500_000
      end
    end.flatten

  end
end
