

class Scraper
  
def get_page
 page = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-nikeid-lifestyle-shoes/1k9Z7puZoneZoi3"))
 name = page.css(".grid-item-info").css(".product-name")
  puts page[0]
  binding.pry
  
 
 end

#def get_names
  
#end
 

#def get_prices
  
#end



#scraper = Scraper.new
#names = get_name
#prices = get_price

#def get_shoes
#(0...prices.size).each do |index|
 # puts "--- index: #{index +1} ---"
 # puts "Name: #{names[index]} | price: #{prices[index]}"
  #end
#end
end
 