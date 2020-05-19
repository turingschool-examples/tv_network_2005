require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'


class CharacterTest < Minitest::Test

  def test_it_exists
    character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_instance_of Character, character
  end

  def test_it_has_a_name
    character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_equal "KITT", character.name
  end

  def test_it_has_an_actor
    character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_equal "William Daniels", character.actor
  end

  def test_it_has_a_salary
    character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_equal 1_000_000, character.salary
  end
end
