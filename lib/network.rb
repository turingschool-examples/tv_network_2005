class Network

  attr_reader :name, :shows

  def initialize(name, shows = [])
    @name = name
    @shows = shows
  end

  def add_show(show)
    shows << show
  end

  def main_characters
    shows.map do |show|
      show.characters
    end
  end

  def actors_by_show
    values = shows.map do |show|
      show.characters.map do |character|
        character.actor
      end
    end
    keys = shows.each { |show| show }
    keys.zip(values).to_h
  end

end
