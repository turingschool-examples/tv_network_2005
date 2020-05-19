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
    main_characters = []
    @shows.map do |show|
      show.characters.each do |character|
        if character.salary > 500000 && character.name == character.name.upcase
          main_characters << character
        end
      end
    end
    main_characters
  end

  def actors_by_show
    actors_by_show = Hash.new
    # require "pry";binding.pry
    @shows.map do |show|
      show.actors.each do |actor|
        {
        actors_by_show[show] => actor
        }
      end
    end.flatten
  end

end
