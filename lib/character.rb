class Character
  attr_reader :name,
              :actor,
              :salary

  def initialize(character_params)
    @name = character_params[:name].upcase
    @actor = character_params[:actor]
    @salary = character_params[:salary]
  end
end
