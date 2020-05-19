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
    grouped_by_show = Hash.new
    shows.each do |show|
      show.characters.map do |character|
        if grouped_by_show[show] != nil
          grouped_by_show[show] << character.actor
        else
          grouped_by_show[show] = [character.actor]
        end
      end
    end
    grouped_by_show
  end

  def shows_by_actor
    shows_by_actor = Hash.new
    self.actors_by_show.each do |show, actors|
      actors.each do |actor|
        if shows_by_actor[actor] != nil
          shows_by_actor[actor] << show
        else
          shows_by_actor[actor] = [show]
        end
      end
    end
    shows_by_actor
  end
end
