require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'
require 'pry'

class NetworkTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT",
                  actor: "William Daniels",
                  salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight",
                  actor: "David Hasselhoff",
                  salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson",
                  [@michael_knight, @kitt])
    @nbc = Network.new("NBC")
    @leslie_knope = Character.new({name: "Leslie Knope",
                  actor: "Amy Poehler", salary: 2_000_000})
    @ron_swanson = Character.new({name: "Ron Swanson",
                  actor: "Nick Offerman", salary: 1_400_000})
    @parks_and_rec = Show.new("Parks and Recreation",
                  "Michael Shur & Greg Daniels",
                  [@leslie_knope, @ron_swanson])
  end

  def test_the_network_exists
    assert_equal "NBC", @nbc.name
    assert_equal [], @nbc.shows
  end

  def test_it_adds_new_shows
    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)
    assert_equal [@knight_rider, @parks_and_rec], @nbc.shows
  end

  def test_it_returns_main_characters
    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)
    assert_equal [[@michael_knight, @kitt],
                  [@leslie_knope, @ron_swanson]],
                  @nbc.main_characters
  end

  def test_it_returns_actors_by_show
    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)
    assert_equal [["David Hasselhoff", "William Daniels"],
                ["Amy Poehler", "Nick Offerman"]],
                @nbc.actors_by_show
  end

end
