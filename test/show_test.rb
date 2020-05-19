require "minitest/autorun"
require "./lib/character"
require "./lib/show"

class ShowTest < Minitest::Test
  def test_it_exists
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_instance_of Show, knight_rider
  end

  def test_show_has_attributes
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    knight_rider = Show.new("Knight Rider", "Glen Larson", [kitt, michael_knight])

    assert_equal "Knight Rider", knight_rider.name
    assert_equal "Glen Larson", knight_rider.creator
    assert_equal [kitt, michael_knight], knight_rider.characters
  end

  def test_show_characters_total_salary
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    knight_rider = Show.new("Knight Rider", "Glen Larson", [kitt, michael_knight])

    assert_equal 2600000, knight_rider.total_salary
  end

  def test_show_highest_paid_character
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    knight_rider = Show.new("Knight Rider", "Glen Larson", [kitt, michael_knight])

    assert_equal "David Hasselhoff", knight_rider.highest_paid_actor
  end

  def test_show_actor_names
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    knight_rider = Show.new("Knight Rider", "Glen Larson", [kitt, michael_knight])

    assert_equal [ "William Daniels","David Hasselhoff"], knight_rider.actors
  end

end
