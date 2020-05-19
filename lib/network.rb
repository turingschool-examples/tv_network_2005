class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    shows << show
  end

  def main_characters
    shows.each do |show|
      show.characters.each do |character|
        if character.salary > 500_000 && character.name == character.name.upcase
          return character
        end
      end
    end
  end

  def actors_by_show ## FIX ME
    {
      @shows[0] => @shows[0].actors,
      @shows[1] => @shows[1].actors
    }
  end

end
