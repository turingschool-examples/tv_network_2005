require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require '../lib/character'
require '../lib/show'

class ShowTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider","Glen Larson", [@michael_knight, @kitt])
  end

  def test_it_exists
    assert_instance_of Show, @knight_rider
  end

  def test_it_has_readable_attributes
    assert_equal @knight_rider.name, "Knight Rider"
    assert_equal @knight_rider.creator, "Glen Larson"
    assert_equal @knight_rider.characters, [@michael_knight, @kitt]
  end

  def test_it_can_find_total_actor_salary
    assert_equal @knight_rider.total_salary, 2600000
  end

  def test_it_can_find_highest_paid_actor
    assert_equal @knight_rider.highest_paid_actor, "David Hasselhoff"
  end

  def test_it_can_list_actors
    assert_equal @knight_rider.actors, ["David Hasselhoff", "William Daniels"]
  end

end
