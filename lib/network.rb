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
    shows.map do |show|
      show.characters
    end
  end


  def actors_by_show
    knight_rider = @shows.map { |show| show.actors(knight_rider) }.flatten
    parks_and_rec = @shows.map { |show| show.actors(parks_and_rec) }.flatten


    { knight_rider => ["David Hasselhoff", "William Daniels"],
      parks_and_rec => ["Amy Poehler", "Nick Offerman"]}
  end
end
