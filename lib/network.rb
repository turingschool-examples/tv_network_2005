require 'pry'

class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows =[]
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_characters = []
    @shows.each do |show|
      # binding.pry
      main_characters << show.characters.find_all do |character|
        character.salary > 500_00 && character.name.eql?(character.name.upcase)
      end
    end
    main_characters.flatten
  end
end
