class CliProject::CLI
  
  def call
    CliProject::Scraper.get_page
    list_shoes
    menu
    
  end
  
  def list_shoes
    puts "Men's Nike Shoes"
    shoes = CliProject::Shoe.all
    shoes.each.with_index(1) {|s, index| puts "#{index}. #{s.name}- #{s.price}"}
  end
  
  def menu
    input = nil
    
  while input != "exit"
    puts "\nPlease enter the number for the shoes you would like more information on or type exit to end:"
    input = gets.strip.downcase
    
  case 
    when input.to_i.between?(1, CliProject::Shoe.all.size) 
      selected = CliProject::Shoe.find_by_index(input.to_i - 1)
      updated_selected = CliProject::Scraper.get_shoe_details(selected)
        
      puts "Description - #{selected.description}"
      puts "\nTo see shoe available, shoe sizes and photos, go to #{selected.url}."
    when input == "list"
      list_shoes
    when input == "exit"
      thanks
    else
      puts "Invalid entry. Reloading list...."
      sleep 1.5
      list_shoes
    end
  end
end
    def thanks
      puts "Please come again soon. Happy Shopping!"
    end
  end
  
  
