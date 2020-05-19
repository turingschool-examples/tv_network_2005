class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows.push(show)
  end

  def main_characters
    @shows.find_all do |show|
      show.characters
      # require "pry"; binding.pry
      if (character.salary > 500_000) &&
         (!character.name =~ /[a-z]/)
      end
    end
  end
end
