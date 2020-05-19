require 'minitest/autorun'
require './lib/character'
require './lib/show'
require './lib/network'
require 'pry'

class NetworkTest < Minitest::Test

  def setup
    @nbc = Network.new("NBC")
  end

  def test_initial_values
    assert_equal "NBC", @nbc.name
    assert_equal [], @nbc.shows
  end
end
