require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  def setup
    @character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_it_exists
    assert_instance_of Character, @character
  end

  def test_it_has_a_name
    skip
    assert_equal {:name => "KITT"}, @character.name
  end

  def test_character_is_played_by_an_actor
    skip
    assert_equal {:actor => "William Daniels"}, @actor.name
  end

  def test_it_has_a_salary
    skip
    assert_equal 1_000_000, @salary
  end

end
