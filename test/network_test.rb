require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class NetworkTest < Minitest::Test

  def test_instance_of_network
    nbc = Network.new("NBC")
    assert_instance_of Network, nbc
  end

end
