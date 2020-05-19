require './lib/character'
require './lib/show'

class Network
  def initialize(name)
    @name = name
    @shows = []
  end
end
