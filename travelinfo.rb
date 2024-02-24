require 'date'

class Itinerary
  attr_accessor :destination, :departure_date, :return_date, :activities, :name

  def initialize
    @name = name
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
      puts "2. Add departure date"
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
      departure_date = Date.strptime(date_str, '%Y-%m-%d')
      if departure_date >= Date.today
        self.departure_date = departure_date
      puts "Depature date set to #{departure_date}"
      else
        puts "Departure date cannot be before the current date."
    else
      puts "Invalid date format. Please enter date in YYYY-MM-DD format."
    end
  end

  def add_return
    puts "Enter return date (YYYY-MM-DD):"
    date_str = gets.chomp

    if valid_date?(date_str)
      return_date = Date.strptime(date_str, '%Y-%m-%d')
      if return_date >= Date.today && return_date >= departure_date
        self.return_date = return_date
      puts "Return date set to #{return_date}"
      elsif return_date < departure_date
        puts "Return date cannot be before depature date."
      else 
        puts "Return date cannot be before the current date."
      end
    else
      puts "Invalid date format. Please enter date in YYYY-MM-DD format."
    end
  end

  def valid_date?(date_str)
    begin
      Date.strptime(date_str, '%Y-%m-%d')
      return true
    rescue ArgumentError
      return false
    end
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
