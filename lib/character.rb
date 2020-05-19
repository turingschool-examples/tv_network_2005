class Character
    attr_reader :name,
                :actor,
                :salary

  def initialize(kitt_info)
    @name = (kitt_info)[:name]
    @actor = (kitt_info)[:actor]
    @salary = (kitt_info)[:salary]
  end
end
