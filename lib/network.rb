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
    show_actors = Hash.new([])
    shows.each do |show|
      show_actors[show] = (show.characters.map {|character| character.actor})
    end
    show_actors
  end

  def shows_by_actor
    actors_shows = Hash.new([])
    actors = []
    @shows.each do |show|
      show.characters.each do |char|
        actors << char.actor
      end
    end
    actors.uniq!
    actors.each do |actor|
      actors_shows[actor] = []
    end
    @shows.each do |show|
      require "pry"; binding.pry
      # if show.characters[0].actor == actors_shows[show.characters[0].actor]
        actors_shows[show.characters[0].actor] += show
    end
  end

end
