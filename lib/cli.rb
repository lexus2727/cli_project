class CLI
  
  "Hello World"
  
  def call
  
  list_tours
  menu
  bonjour
  end
  
  def list_tours
  puts "Popular Paris Tours"
  
    @tours = Paris.fun
  end
  
  def menu
    input =nil
  while input != "exit"
    puts "Please enter the number for the tour you would like more information on or type exit to end:"
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
    else
      puts "invalid number"
    end
  end
  # user gets back a brief description for the tour selected
  end
  
  def bonjour
    puts "Bonjour!"
  end

end
