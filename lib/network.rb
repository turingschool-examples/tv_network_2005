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

  private
  attr_writer :shows
end
