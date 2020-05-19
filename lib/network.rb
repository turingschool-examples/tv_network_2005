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
    @shows.flat_map do |show|
      show.characters
    end
  end

  def main_characters
    all_characters.find_all do |character|
      character.salary > 500_000 && character.name == character.name.upcase
    end
  end

  def actors_by_show
    actors_by_show_list = {}

    @shows.each do |show|
      actors_by_show_list[show] = []
    end

    @shows.each do |show|
      all_characters.each do |character|
        if show.characters.include?(character)
          actors_by_show_list[show] << character.actor
        end
      end
    end
    
    actors_by_show_list
  end
end
