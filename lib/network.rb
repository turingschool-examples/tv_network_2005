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
    # actors_by_show_list = {}
    #
    # @shows.each do |show|
    #   show.characters.each do |character|
    #     actors_by_show_list[show] = show.actors
    #   end
    # end
    #
    # actors_by_show_list

    # using reduce
    @shows.reduce({}) do |actors_by_show, show|
      actors_by_show[show] = show.actors
      actors_by_show
    end

    # set argument to be accumulator
    # first block var = the name of accumulator
    # second block var = what you're iterating over
    # need to always return the accumulator at the end of the block

    # reduce is used to build something new
    # as opposed to w each and map, we take an array and build an array into another array

    # using .to_h -- ONLY WORKS IN RUBY 2.6 OR LATER
    # @shows.to_h { |show| [show, show.actors] }
  end

  def all_actors
    all_characters.map do |character|
      character.actor
    end
  end

  def unique_actors
    all_actors.uniq
  end

  def shows_by_actor
    shows_by_actor = {}

    @shows.each do |show|
      show.characters.each do |character|
        shows_by_actor[character.actor] = [] if shows_by_actor[character.actor].nil?
        shows_by_actor[character.actor] << show
      end
    end

    shows_by_actor
  end

  def prolific_actors
    all_actors.find_all do |actor|
      all_actors.count(actor) > 1
    end.uniq

    # Value is returned as string, not array
    # all_actors.detect do |actor|
    #   all_actors.count(actor) > 1
    # end
  end
end
