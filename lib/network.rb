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
    main = []
    shows.characters.each do |character|
      main << character if character.salary > 500_000 && 
    end
  end

  def actors_by_show
    shows.group_by do |show, characters|
      show[characters.map { |character| character.actor }]
    end
  end
end
