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
    main_chars = []
     @shows.each do |show|
       show.characters.each do |character|
        if character.salary > 500_000 && character.name == character.name.upcase
          main_chars << character
        end
      end
    end     # require 'pry'; binding.pry
    main_chars
  end

end
