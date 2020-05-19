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
    main_collector = []
    @shows.each do |show|
      main = show.characters.find_all do |character|
        character.salary > 500_000 && character.name == character.name.upcase
      end
      main_collector << main
    end
    main_collector.flatten
  end

end
