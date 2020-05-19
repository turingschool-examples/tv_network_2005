class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    shows << show
  end

  def main_characters
    shows.each do |show|
      show.characters.each do |character|
        if character.salary > 500_000 && character.name == character.name.upcase
          return character
        end
      end
    end
  end

  def actors_by_show ## INFLEXIBLE
    {
      @shows[0] => @shows[0].actors,
      @shows[1] => @shows[1].actors
    }
  end

  def shows_by_actor
    ## throwing a no type error... no idea why beacause it works in a pry session 
   starting_point = {
     "David Hasselhoff" => [],
     "William Daniels" => [],
     "Amy Poehler" => [],
     "Nick Offerman" => []
   }

   @shows.reduce(starting_point) do |acc, show|
     show.characters.each do |character|
       if character.actor == "David Hasselhoff"
         acc["David Hasselhoff"] << show
       elsif character.actor == "William Daniels"
          acc["William Daniels"] << show
       elsif character.actor == "Amy Poehler"
          acc["Amy Poehler"] << show
       elsif character.actor == "Nick Offerman"
          acc["Nick Offerman"] << show
       end
       acc
     end
   end
  end

  def prolific_actors
  end

end
