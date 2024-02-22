class Itinerary
  attr_accessor :destination, :departure_date, :return_date, :activities, :traveler_name

  def initialize
    @name = traveler_name
    @destination = destination
    @depature = departure_date
    @return = return_date
    @activities = activities
  end

  def trip
    puts "\n"
    puts "Hello! Let's get you ready for your next holiday!"
    puts "First, what's get your name?"
    self.name = gets.chomp
    puts "Great, #{name}"
    itinerary_list
  end

  def itinerary_list
    loop do
      puts "\n"
      puts "Travel time!"
    end
  end


end
