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
    actors_by_show_list = {}

    @shows.each do |show|
      actors_by_show_list[show] = []
    end

    @shows.each do |show|
      all_characters.each do |character|
        if show.characters.include?(character)
          actors_by_show_list[show] << character.actor
        end
      end
    end

    actors_by_show_list
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
    shows_by_actor_list = {}

    unique_actors.each do |actor|
      shows_by_actor_list[actor] = []
    end

    actors_by_show.keys.each do |actor|
      if shows_by_actor_list.keys.include?(actor)
        shows_by_actor_list[actor] << "hi"
      end
    end

    # unique_actors.each do |actor|
    #   shows_by_actor_list[actor] = []
    # end
    #
    # @shows.each do |show|
    #   unique_actors.each do |actor|
    #     if show.characters.include?(actor)
    #       shows_by_actor_list[actor] << show
    #     end
    #   end
    # end


    # all_actors.uniq.each do |actor|
    #   @shows.each do |show|
    #     show.characters.each do |character|
    #       if show.character == actor
    #         shows_by_actor_list_[actor] << show
    #       end
    #     end
    #   end
    # end

    shows_by_actor_list
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
