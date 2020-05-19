require "minitest/autorun"
require "minitest/pride"
require "./lib/character"
require "pry"

class CharacterTest < Minitest::Test
  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1000000})
  end

  def test_it_exists
    assert_instance_of Character, @kitt
  end

  def test_it_has_a_name
    assert_equal "KITT", @kitt.name
  end

  def test_it_has_actor
    assert_equal "William Daniels", @kitt.actor
  end

  def test_it_has_salary
    assert_equal 1000000, @kitt.salary
  end
end
