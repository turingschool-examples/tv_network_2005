require "minitest/autorun"
require "./lib/character"

class CharacterTest < Minitest::Test
  def test_it_exists
    character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_instance_of Character, character
  end

  def test_character_has_name
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_equal "KITT", kitt.name
  end

  def test_character_has_actor
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_equal "William Daniels", kitt.actor
  end

  def test_character_has_name
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_equal 1_000_000, kitt.salary
  end

end
