class Character

  attr_reader :name, :actor, :salary

  def initialize(hash)
    hash.each {|k,v| instance_variable_set("@#{k}",v)}
  end

end
