require 'date'
require 'minitest/autorun'
require './travelinfo'

class TestTravelInfo < Minitest::Test
  def setup
    @itinerary = Itinerary.new
  end

  def test_add_destination
    @itinerary.add_destination
    assert_equal true, !@itinerary.destination.nil? && !@itinerary.destination.empty?
  end

  def test_add_departure
    @itinerary.add_departure
    assert_equal true, !@itinerary.departure_date.nil?
  end

  def test_add_return
    @itinerary.departure_date = Date.new(2024, 3,1)
    @itinerary.add_return
    assert_equal true, !@itinerary.return_date.nil?
  end

end
