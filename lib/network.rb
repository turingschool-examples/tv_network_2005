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
    main = @shows.map do |show|
      show.characters.select do |character|
        character.name == character.name.upcase && character.salary > 500000
      end
    end
    main[0][0]
  end
  # I know this is wrong, but, it keeps sitting in an array...each do gives the whole show instead of jsut the character

  def actors_by_show
    # key is show, value is actors array show.actors
    grouped = Hash.new
    @shows.each do |show|
      grouped[show] = show.actors
    end
    hash
  end

  def shows_by_actor
    grouped = Hash.new{ |hash, key| hash[key] = []}
    #key is actor, value is array of shows they're in
    @shows.each do |show|
      show.actors.each do |actor|
        grouped[actor] << show
      end
    end
  end

  def prolific_actors
    #need to use shows by actor to link actors to the shows they have been in and then do a select if the actor has been in > 1 shows
    @shows.each do |show|
      @show.actors.each do |actor|
        shows_by_actor > 1
      end
    end
  end
end
