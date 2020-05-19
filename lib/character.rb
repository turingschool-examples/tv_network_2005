class Character
  attr_reader :name, :actor, :salary

  def initialize(char_info)
    @name = char_info[:name]
    @actor = char_info[:actor]
    @salary = char_info[:salary]
  end

end
