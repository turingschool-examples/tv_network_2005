require 'minitest/autorun'
require 'minitest/pride'
require './lib/show'

class ShowTest < Minitest::Test

  def setup
    skip
    @characters = Character_1.new({name: "KITT", actor: "William Daniels", salary: 1_000_000}), Character_2.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @show = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
  end

  def test_it_exists
    skip
    assert_instance_of Show, @show
  end

  def test_it_has_a_name
    skip
    assert_equal "Knight Rider", @show.name
  end

  def test_it_has_a_creator
    skip
    assert_equal "Glen Larson", @show.creator
  end

  def test_it_has_characters
    skip
    assert_equal @characters, @show.characters
  end

  def test_it_has_a_total_salary
    skip
    assert_equal 2600000, @show.total_salary
  end

  def test_it_has_highest_paid_actor
    skip
    assert_equal Character_2.new, @show.highest_paid_actor
  end

  def test_it_has_actors
    skip
    assert_equal Character_1.new && Character_2.new, @show.actors
  end

end
