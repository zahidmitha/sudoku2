require 'minitest/autorun'
require './lib/bike'
require 'ansi'
require 'turn'

class TestBike < MiniTest::Unit::TestCase
  def test_broken_bike
    bike = Bike.new
    assert bike.broken? == false
  end
end