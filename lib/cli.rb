class CLI
  
  def call
  
  list_tours
  menu
  bonjour
  end
  
  def list_tours
  puts "Popular Paris Tours"
  puts <<-DOC.gsub /^\s*/, ''
    1. Moulin Rouge Show, 2 hours, $112
    2. Louvre Tour, 3 hours, $70.55
    3. Eiffel Tower, 1 hour, $86.75
    4. Versailles Palace, 1 day, $49.16
    5. Seine River Dinner Cruise, 2.5 hours, $79.81
    DOC
  end
  
  def menu
    input =nil
    while input != "exit"
    puts "Please enter the number for the tour, you would like more information on, list to see the tours again,or type exit to end:"
    input = gets.strip.downcase
    case input
    when "1"
      puts "description of tour 1"
    when "2"
      puts "description of tour 2"
    when "3"  
      puts "description of tour 3"
    when "4"
      puts "description of tour 4"
    when "5" 
      puts "description of tour 5"
    end
  end
  # user gets back a brief description for the tour selected
end
