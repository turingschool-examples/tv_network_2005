require "./lib/show"
require "./lib/character"
require "minitest/autorun"
require "minitest/pride"

class ShowTest < MiniTest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  end

  def test_it_exists
    assert_instance_of Show, @knight_rider
  end

  def test_it_has_a_name_and_creator_and_characters
    assert_equal "Knight Rider", @knight_rider.name
    assert_equal "Glen Larson", @knight_rider.creator
    assert_equal [@kitt, @michael_knight], @knight_rider.characters
  end

  def test_it_knows_the_total_salary
    assert_equal 2_600_000, @knight_rider.total_salary
  end

  def test_it_knows_the_highest_paid_actor
    assert_equal "David Hasselhoff", @knight_rider.highest_paid_actor
  end

  def test_it_knows_the_actors
    assert_equal ["David Hasselhoff", "William Daniels"], @knight_rider.actors
  end

end
