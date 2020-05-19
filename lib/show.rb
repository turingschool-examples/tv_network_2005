class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = Array.new(characters)
  end

  def total_salary
    (@characters[0].salary) +
    (@characters[1].salary)
  end
end

# def renters
#     renter_names = []
#
#     @units.each do |unit|
#       # "we have a renter" is what != nil is saying
#       if unit.renter != nil
#         renter_names << unit.renter.name
#       end
#     end
#     renter_names
#   end
