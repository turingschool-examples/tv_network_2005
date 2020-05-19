require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'

class NetworkTest < Minitest::Test

  def test_instance_of_network
    nbc = Network.new("NBC")
    assert_instance_of Network, nbc
  end

  def test_network_name
    nbc = Network.new("NBC")
    assert_equal "NBC", nbc.name
  end

end
