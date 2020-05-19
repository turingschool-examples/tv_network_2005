class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(new_show)
    shows << new_show
  end

  # don't like this method, think there must be a better way
  def main_characters
    shows.map do |show|
      show.characters.map do |character|
        if character.name == character.name.upcase && character.salary > 500000
          return character
        end
      end
    end
  end

  private
  attr_writer :shows
end
