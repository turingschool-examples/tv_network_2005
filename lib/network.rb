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
    @shows.flat_map do |show|
      show.characters.select do |character|
        character.name == character.name.upcase && character.salary > 500000
      end
    end
  end

  def actors_by_show
    # key is show, value is actors array show.actors
    #reduce is best use case. You MUST return accumulator after.
    # actor_show = {}
    # @shows.each do |show|
    #   actor_show[show] = show.actors
    # end
    # actor_show

    @shows.reduce({}) do |actor_show, show|
      actor_show[show] = show.actors
      actor_show
    end
  end

  def unique_actors
    key = @shows.flat_map do |show|
      show.actors
    end.uniq
  end

  def included_actors(actor)
    @shows.select do |show|
      show.actors.include?(actor)
    end
  end

  def shows_by_actor
    # actors string is the key, array of shows is the value
    # show_by_actor = Hash.new { |hash, key| hash[key] = [] }
    # unique_actors.each do |actor|
    #   show_by_actor[actor] = included_actors(actor)
    # end
    # show_by_actor

    # also works with reduce
    unique_actors.reduce({}) do |show_by_actor, actor|
      show_by_actor[actor] = included_actors(actor)
      show_by_actor
    end
  end


  def prolific_actors
    #need to use shows by actor to link actors to the shows they have been in and then do a select if the actor has been in > 1 shows
    # shows_by_actor.select do |actor, shows|
    #   shows.length > 1
    # end.keys
    #
    # shows_by_actor.select do |actor, shows|
    #   actor if shows.length > 1
    # end

    actors = []
    shows_by_actor.each do |actor, shows|
      actors << actor if shows.length > 1
    end
    actors
  end
end
