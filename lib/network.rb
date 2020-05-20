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
    characters = @shows.flat_map do |show|
      show.characters
    end
    characters.find_all do |character|
      character.salary > 500000 && (character.name == character.name.upcase)
    end
  end

  def actors_by_show
    @shows.reduce({}) do |acc, show|
      acc[show] = show.actors
      acc
    end
  end

  def unique_actors
    @shows.flat_map {|show| show.actors}.uniq
  end

  def included_actors(actor)
    @shows.find_all {|show| show.actors.include?(actor)}
  end

  def shows_by_actor
    unique_actors.reduce({}) do |acc, actor|
      acc[actor] = included_actors(actor)
      acc
    end
  end

  def prolific_actors
    actors = []
    shows_by_actor.each do |actor, shows|
      actors << actor if shows.length > 1
    end
    actors
  end
end
