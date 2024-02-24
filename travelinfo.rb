require 'date'

class Itinerary
  attr_accessor :destination, :departure_date, :return_date, :activities, :traveler_name

  def initialize
    @name = traveler_name
    @destination = destination
    @departure = departure_date
    @return = return_date
    @activities = activities
  end

  def trip
    puts "\n"
    puts "Hello! Let's get you ready for your next holiday!"
    puts "First, what's get your name?"
    self.name = gets.chomp
    puts "\n"
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
        add_departure
      when 3
        add_return
      when 4
        add_activities
      when 5
        final_itinerary
        break
      else
        puts "Invalid option. Please choose a valid option."
      end
    end
  end

  def add_destination
    puts "Where is the destination of this holiday?"
    self.destination = gets.chomp

    reaction = [
      "Oh that's wonderful, I love that place!",
      "I've never been there.",
      "I've heard this is a great destination."
    ]

    puts "\n"
    puts "#{destination}! #{reaction.sample}"
  end

  def add_departure
    puts "Enter depature date (YYYY-MM-DD):"
    date_str = gets.chomp

    if valid_date?(date_str)
      self.departure_date = Date.parse(date_str)
      puts "Depature date set to #{departure_date}"
    else
      puts "Invalid date format. Please enter date in YYYY-MM-DD format."
    end
  end

  def add_return
    puts "Enter return date (YYYY-MM-DD):"
    date_str = gets.chomp

    if valid_date?(date_str)
      self.return_date = Date.parse(date_str)
      puts "Return date set to #{return_date}"
    else
      puts "Invalid date format. Please enter date in YYYY-MM-DD format."
    end
  end

  def valid_date?(date_str)
    Date.parse(date_str)
  end

  def add_activities
    "\n"
    puts "What are some activities you'll be doing on your trip?"
    self.activities = gets.chomp

    act_reaction = [
      "That sounds like fun!",
      "Oh, I have to try that on my next holiday",
      "What a great way to have fun on your trip!"
    ]

    puts "#{act_reaction.sample}"
  end

  def final_itinerary
    puts "\n"
    puts "Final Itinerary:"
    puts "Destination: #{destination}" unless destination.nil? || destination.empty?
    puts "Departure Date: #{departure_date}" unless departure_date.nil?
    puts "Return Date: #{return_date}" unless return_date.nil?
    puts "Activities: #{activities}" unless activities.nil? || activities.empty?

    puts "\n"
    puts "Have a great trip!"
  end

end
