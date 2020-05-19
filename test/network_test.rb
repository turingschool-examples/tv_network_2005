require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'


class NetworkTest < Minitest::Test

  def test_network_has_a_name
    nbc = Network.new("NBC")
    assert_equal "NBC", nbc.name
  end

  def test_network_has_empty_shows_array
    nbc = Network.new("NBC")
    assert_equal [], nbc.shows
  end


end
