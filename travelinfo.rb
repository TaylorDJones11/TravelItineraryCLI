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
      puts "Let's start building your itinerary"
      puts "1. Add destination"
      puts "2. Add depature date"
      puts "3. Add return date"
      puts "4. Add your activities"
      puts "5. Finished building my itinerary"

      choice = gets.chomp.to_i

      case choice
      when 1
        add_destination
      when 2
        add_depature
      when 3
        add_return
      when 4
        add_activities
      when 5
      end
    end
  end

  def add_destination
  end

  def add_depature
  end

  def add_return
  end

  def add_activities
  end

end
