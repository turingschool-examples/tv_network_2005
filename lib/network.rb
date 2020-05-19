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
    shows.each do |show|
      show.characters.each do |character|
        if character.salary > 500_000 && character.name == character.name.upcase
          main_characters << character
        end
      end
    end
    main_characters
  end

  def actors_by_show
    shows.to_h { |show| [show, show.actors] }
  end

  def shows_by_actor
    actors = shows.map do |show|
      show.actors
    end.flatten
    actors.to_h {|actor| [actor, shows.select {|show| show if show.actors.include?(actor)}]}
  end

  def prolific_actors
    actors = []
    shows_by_actor.each do |actor, show|
      actors << actor if show.count > 1
    end
    actors
  end
end
