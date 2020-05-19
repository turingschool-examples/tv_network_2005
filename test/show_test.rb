require 'minitest/autorun'
require 'minitest/pride'
require './lib/show'

class ShowTest < Minitest::Test

  def setup
    kitt = Character_1.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character_2.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

  end











end
