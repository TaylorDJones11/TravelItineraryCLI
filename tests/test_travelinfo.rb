require 'minitest/autorun'
require './travelinfo'

class TestTravelInfo < Minitest::Test
  def setup
    @itinerary = Itinerary.new
  end

  def test_add_destination
    @itinerary.add_destination("New York")
    assert_equal "New York", @itinerary.destination
  end

  def test_add_departure
    @itinerary.add_departure("2024-03-01")
    assert_equal Date.new(2024, 3,1), @itinerary.departure_date
  end

  def test_add_return
    @itinerary.add_return("2024-03-05")
    assert_equal Date.new(2024,3,5), @itinerary.return_date
  end

  def test_add_activities
    @itinerary.add_activities("Sightseeing")
    assert_equal "Sightseeing", @itinerary.activities
  end
end
