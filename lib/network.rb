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
    #find_all
    # shows, characters

    # main_characters = []
    # @shows.each do |show|
    #   show.characters.each do |character|
    #     if character.salary > 500_000 && character.name == character.name.upcase
    #       main_characters << character
    #     end
    #   end
    # end
    # main_characters
    @shows.flat_map do |show|
      show.characters.find_all do |character|
        character.salary > 500_000 && character.name == character.name.upcase
      end
    end
  end

  def actors_by_show
    # actors_by_show = {}
    # @shows.each do |show|
    #   actors_by_show[show] = []
    #   show.characters.each do |character|
    #     actors_by_show[show] << character.actor
    #   end
    # end
    # actors_by_show
    # actors_by_show = {}
    # @shows.each do |show|
    #   actors_by_show[show] = show.actors
    # end
    # actors_by_show

    @shows.reduce({}) do |actors_by_show, show|
      actors_by_show[show] = show.actors
      actors_by_show
    end

    # @shows.to_h { |show| [show, show.actors]} #only works in 2.6 or later
  end

  def shows_by_actor
    # shows_by_actor = {}
    #
    # @shows.each do |show|
    #   show.characters.each do |character|
    #     shows_by_actor[character.actor] = [] if shows_by_actor[character.actor].nil?
    #     shows_by_actor[character.actor] << show
    #   end
    # end
    # shows_by_actor

    # shows_by_actor = Hash.new { |hash, key| hash[key] = [] } #sets a default value of []
    # @shows.each do |show|
    #   show.characters.each do |character|
    #     shows_by_actor[character.actor] << show
    #   end
    # end
    # shows_by_actor

    # shows_by_actor = {}
    # @shows.each do |show|
    #   show.characters.each do |character|
    #     if shows_by_actor[character.actor].nil?
    #       shows_by_actor[character.actor] = [show]
    #     else
    #       shows_by_actor[character.actor] << show
    #     end
    #   end
    # end
    # shows_by_actor

    @shows.reduce({}) do |shows_by_actor, show|
      show.characters.each do |character|
        shows_by_actor[character.actor] = [] if shows_by_actor[character.actor].nil?
        shows_by_actor[character.actor] << show
      end
      shows_by_actor
    end
  end

  def prolific_actors
    # shows_by_actor.select do |actor, shows|
    #   shows.length > 1
    # end.keys

    shows_by_actor.reduce([]) do |acc, (actor, shows)|
      acc << actor if shows.length > 1
      # do a thing *if* this is truthy
      # do a thing *unless* this is truthy
      acc
    end
  end
end
