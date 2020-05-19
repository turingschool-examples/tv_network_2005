require './lib/character'
require './lib/show'

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
    @shows.each do |show|
      show.characters.find_all do |character|
       if (character.name.upcase!) == nil && (character.salary > 500_000)
         p character
       end
      end
    end
  end
end
