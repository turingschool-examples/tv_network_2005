
require "minitest/autorun"
require "./lib/character"
require "./lib/show"
require './lib/network'


class NetworkTest < Minitest::Test
  def test_it_exists
    nbc = Network.new("NBC")

    assert_instance_of Network, nbc
  end

  def test_network_has_attributes
    nbc = Network.new("NBC")

    assert_equal "NBC", nbc.name
  end

  def test_network_has_no_shows
    nbc = Network.new("NBC")

    assert_equal [], nbc.shows
  end

  def test_network_can_add_show
    nbc = Network.new("NBC")

    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])

    nbc.add_show(knight_rider)
    assert_equal [knight_rider], nbc.shows
    nbc.add_show(parks_and_rec)
    assert_equal [knight_rider, parks_and_rec], nbc.shows
  end

  def test_it_knows_the_main_characters
    nbc = Network.new("NBC")

    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary:400_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    nbc.add_show(knight_rider)

    assert_equal [kitt], nbc.main_characters
  end

  def test_network_actors_by_show
    # skip
    nbc = Network.new("NBC")

    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 400_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])

    nbc.add_show(knight_rider)
    nbc.add_show(parks_and_rec)

    assert_equal [knight_rider, parks_and_rec], nbc.shows

    expected ={
      knight_rider => ["William Daniels", "David Hasselhoff"],
      parks_and_rec => ["Amy Poehler", "Nick Offerman"]
    }

    assert_equal expected , nbc.actors_by_show

  end

end

# pry(main)> michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
# # => #<Character:0x00007fe5f88721f8...>
#
# pry(main)> kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
# # => #<Character:0x00007fe5f8448f78...>
#
# pry(main)> knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
# # => #<Show:0x00007fe5f8398970...>
#
# pry(main)> mitch = Character.new({name: "Mitch Buchannon", actor: "David Hasselhoff", salary: 1_200_000})
# # => #<Character:0x00007fe5f8448f78...>
#
# pry(main)> baywatch = Show.new("Baywatch", "Gregory Bonann", [mitch])
# # => #<Show:0x00007fe5f8398970...>
#
# pry(main)> leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
# # => #<Character:0x00007fe5f832bb18...>
#
# pry(main)> ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
# # => #<Character:0x00007fe5f8172a60...>
#
# pry(main)> parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
# # => #<Show:0x00007fe5f88b0a20...>
#
# pry(main)> parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
# # => #<Show:0x00007fe5f88b0a20...>
#
# pry(main)> nbc.add_show(knight_rider)
#
# pry(main)> nbc.add_show(baywatch)
#
# pry(main)> nbc.add_show(parks_and_rec)
#
# pry(main)> nbc.shows_by_actor
# # => {
# #      "David Hasselhoff" => [knight_rider, baywatch],
# #      "William Daniels" => [knight_rider],
# #      "Amy Poehler" => [parks_and_rec],
# #      "Nick Offerman" => [parks_and_rec]
# #    }
#
# pry(main)> nbc.prolific_actors
# => ["David Hasselhoff"]
