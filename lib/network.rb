class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def all_characters
    @shows.collect do |show|
      show.characters
    end.flatten
  end

  def main_characters
    all_characters.find_all do |character|
      character.salary > 500_000 && character.name == character.name.upcase
    end
  end

  def actors_by_show
    show_actors = Hash.new { |hash, key|
      hash[key] = []
    }

    @shows.each do |show|
      show_actors[show] = show.characters.collect do |character|
        character.actor
      end
    end
    show_actors
  end

end
