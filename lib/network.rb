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
    @shows.reduce do |show|
      show.characters.filter do |character|
        upcase = character.name == character.name.upcase
        paid = character.salary > 500_000
        upcase && paid
      end
    end
  end

end
