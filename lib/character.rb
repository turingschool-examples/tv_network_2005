class Character
  attr_reader :info

  def initialize(info)
    @info = info
  end

  def name
    info[:name]
  end

  def actor
    info[:actor]
  end

end
