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
    actors_by_show_hash = Hash.new { |hash, key|
      hash[key] = []
    }

    @shows.each do |show|
      actors_by_show_hash[show] = show.characters.collect do |character|
        character.actor
      end
    end
    actors_by_show_hash
  end

  def shows_by_actor

    shows_by_actor_hash = Hash.new { |hash, key|
      hash[key] = []
    }

    actors_by_show.each do |show, actors|
      actors.each do |actor|
        shows_by_actor_hash[actor] << show
      end
    end

    shows_by_actor_hash
    # this works, but there has to be a
    # better way to do this
  end

  def prolific_actors
    prolific = []
    shows_by_actor.each do |actor, shows|
      if shows.count > 1
        prolific << actor
      end
    end
    prolific
  end

end
