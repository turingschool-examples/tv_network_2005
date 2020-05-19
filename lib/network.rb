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
    main_collector = []
    @shows.each do |show|
      main = show.characters.find_all do |character|
        character.salary > 500_000 && character.name == character.name.upcase
      end
      main_collector << main
    end
    main_collector.flatten
  end

  def actors_by_show
    show_actors = {}
    @shows.each do |show|
      show_actors[show] = show.actors
    end
    show_actors
  end

  def shows_by_actor
    @shows.each do |show|
      require "pry"
      binding.pry
    end
  end

end
