require "minitest/autorun"
require "./lib/character"
require "./lib/show"

class ShowTest < Minitest::Test
  def test_it_exists
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_instance_of Show, knight_rider
  end

  def test_show_has_attributes
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    knight_rider = Show.new("Knight Rider", "Glen Larson", [kitt, michael_knight])

    assert_equal "Knight Rider", knight_rider.name
    assert_equal "Glen Larson", knight_rider.creator
    assert_equal [kitt, michael_knight], knight_rider.characters
  end

  def test_show_characters_total_salary
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    knight_rider = Show.new("Knight Rider", "Glen Larson", [kitt, michael_knight])

    assert_equal 2600000, knight_rider.total_salary
  end

  def test_show_highest_paid_character
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    knight_rider = Show.new("Knight Rider", "Glen Larson", [kitt, michael_knight])

    assert_equal "David Hasselhoff", knight_rider.highest_paid_actor
  end

end


# pry(main)> kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
# # => #<Character:0x00007f98a4ba8dc8...>
#
# pry(main)> michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
# # => #<Character:0x00007f8327213de0...>
#
# pry(main)> knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
# # => #<Show:0x00007f83280b3288...>
#
# pry(main)> knight_rider.name
# # => "Knight Rider"
#
# pry(main)> knight_rider.creator
# # => "Glen Larson"
#
# pry(main)> knight_rider.characters
# # => [#<Character:0x00007f8327213de0...>, #<Character:0x00007f8326ab57d8...>]
#
# pry(main)> knight_rider.total_salary
# # => 2600000
#
# pry(main)> knight_rider.highest_paid_actor
# # => "David Hasselhoff"
#
# pry(main)> knight_rider.actors
# # => ["David Hasselhoff", "William Daniels"]
