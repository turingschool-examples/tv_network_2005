require './lib/character'
require './lib/show'
require './lib/network'
require 'minitest/autorun'
require 'minitest/pride'

class NetworkTest < Minitest::Test
  def test_it_exists
    nbc = Network.new("NBC")

    assert_instance_of Network, nbc
  end

  def test_it_has_name
    nbc = Network.new("NBC")

    assert_equal "NBC", nbc.name
  end

end
