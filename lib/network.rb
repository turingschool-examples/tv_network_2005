class Network

  attr_reader :name,
              :shows

  def initialize(name, shows = [])
    @name = name
    @shows = shows
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    @shows.map do |show|
      show.characters
    end
  end

  def actors_by_show
    @shows.map do |show|
      show.actors
    end
  end

  def shows_by_actor
    list = Hash.new
    @shows.map do |show|
      list[show.actors[]] = show.name
    end
  end

  def prolific_actors
    @shows.select do |show|
      #
    end
  end
end
