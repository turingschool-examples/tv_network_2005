require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  def setup
    @character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end
