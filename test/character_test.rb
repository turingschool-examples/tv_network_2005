require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
class CharacterTest < Minitest::Test

def test_instance_of_character
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  assert_instance_of Character, kitt
end

def test_attributes_of_character
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  assert_equal "KITT", kitt.name
  assert_equal "William Daniels", kitt.actor
  assert_equal 1000000, kitt.salary
end

end
