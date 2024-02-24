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
        final_itinerary
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

  def add_depature
  end

  def add_return
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
    puts "Final Itinerary:"
    puts "Destination: #{destination}" unless destination.nil? || destination.empty?
    puts "Departure Date: #{departure_date}" unless departure_date.nil?
    puts "Return Date: #{return_date}" unless return_date.nil?
    puts "Activities: #{activities}" unless activities.nil? || activities.empty?
  end

end
