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

    characters_array = @shows.map do |show|
      show.characters
    end
    # require 'pry'; binding.pry
#characters_array[0][0].salary = integer
    indiv_char = characters_array.map do |character|
      character.character
    end

  end

end
