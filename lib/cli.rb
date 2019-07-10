class CliProject::CLI
  
  def call
  CliProject::Scraper.get_page
  list_shoes
  menu
  thanks
  end
  
  def list_shoes
  puts "Men's Nike Shoes"
  shoes = CliProject::Shoe.all
  shoes.each.with_index(1) {|s, index| puts "#{index}. #{s.name}- #{s.price}"}
  end
  
  def menu
    input =nil
  while input != "exit"
    puts "Please enter the number for the shoes you would like more information on or type exit to end:"
    input = gets.strip.downcase
    
    if input.to_i > 0
    selected = CliProject::Shoe.find_by_index(input.to_i - 1)
     if selected == nil
       puts "Invalid entry. Please try again."
     else
       puts = " "
    puts "#{selected.name} - #{selected.price}"
    puts "To see shoe available shoe sizes and photos, go to #{selected.url}."
    puts " "
    end
    elsif input.downcase == "list"
    list_shoes
    else
    
    puts "Invalid entry. Please try again."
    end
    end 
    end

    def thanks
    puts "Please come again soon. Happy Shopping!"
    end
    end
  
  
