require './lib/character'
require './lib/show'

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
    @shows.each do |show|
      show.characters.each do |character|
        if character.salary > 500_000 && character.name == character.name.upcase
          main_characters << character
        end
      end
    end
    main_characters
  end

  def actors_by_show
    # @shows.to_h { |show| [show, show.actors]} # only for Ruby 2.6

    # show_actors = Hash.new
    # shows.each do |show|
    #   show_actors[show] = show.actors # utilize previously built method
    # end
    # show_actors

    @shows.reduce({}) do |show_actors, show| # reduce method refactor
      show_actors[show] = show.actors
      show_actors
    end
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
    shows_by_actor.select do |actor, shows|
      shows.length > 1
    end.keys
  end
end
