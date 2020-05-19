require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test
  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_it_exists
    assert_instance_of Character, @kit
  end

  def test_it_has_name
    skip
    assert_equal "KITT", @kitt.name
  end

  def test_it_has_actor
    skip
    assert_equal "William Daniels", @kitt.actor
  end
  
  def test_it_has_salary
    skiop
    assert_equal 1000000, @kit.salary
  end
end
