class Character
  attr_reader :name,
              :actor,
              :salary

  def initialize(character)
    @name = character[:name]
    @actor = character[:actor]
    @salary = character[:salary].to_s.gsub(/\_/,'').to_i
  end



end
