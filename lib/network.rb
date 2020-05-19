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

# networks have shows > shows have characters > characters have attributes
  def main_characters
    @shows.select do |show|
      show.select do |character|
        character.name == character.name.upcase && character.salary > 500_000
      end
    end
  end
end
