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
    @shows.map do |show|
      show.characters.map do |x|
        # require'pry';binding.pry
        if x.name == x.name.upcase
        end
      end
    end
  end

  # def actors_by_show
  #   @shows.group_by do |show|
  #     if show.name == "Knight Rider"
  #       :knight_rider[show.actors]
  #     else
  #       :parks_and_rec
  #     end
  #   end
    # cast = Hash.new
    # @shows.map {|show| show.actors}
    #
    #   # require'pry';binding.pry

end
