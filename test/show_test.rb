require "minitest/autorun"
require "minitest/pride"
require "./lib/character"
require "./lib/show"
require "pry"

class ShowTest < Minitest::Test
  def setup
    @knight_rider = Show.new("Knight Rider", "Glen Larson", ["michael_knight", "kitt"])
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1000000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1600000})
  end

  def test_it_exists
    assert_instance_of Show, @knight_rider
  end

  def test_it_has_name
    assert_equal "Knight Rider", @knight_rider.name
  end

  def test_it_has_creator
    assert_equal "Glen Larson", @knight_rider.creator
  end

  def test_it_has_characters
    assert_equal ["michael_knight", "kitt"], @knight_rider.characters
  end

  def test_total_salary
    assert_equal 2600000, @knight_rider.total_salary
  end

  def test_highest_paid_actor
    assert_equal "David Hasselhoff", @knight_rider.highest_paid_actor
  end

  def test_it_has_actors
    assert_equal ["David Hasselhoff", "William Daniels"]
  end
end



# pry(main)> knight_rider.total_salary
# # => 2600000
#
# pry(main)> knight_rider.highest_paid_actor
# # => "David Hasselhoff"
#
# pry(main)> knight_rider.actors
# # => ["David Hasselhoff", "William Daniels"]
