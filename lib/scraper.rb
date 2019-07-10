require 'pry'
require 'nokogiri'
require 'open-uri'

class CliProject::Scraper
  
def self.get_page
    doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-nikeid-lifestyle-shoes/1k9Z7puZoneZoi3",'User-Agent' => 'ruby'))
    doc.css(".grid-item-info").each do |item|
   name = item.css(".product-name").css("p").text
   price = item.css(".product-price").css("span.local").text
   url = item.css("a").attr("href")
   CliProject::Shoe.new(name, price, url)
  end
end
end 


# def get_names
#   name = doc.css(".grid-item-info").css(".product-name").css("p").children.map { |name| name.text}.compact 
# end  
 

# def get_prices
#   price = doc.css(".grid-item-info").css(".product-price").css("span.local").children.map { |name| name.text}.compact
# end

# def get_url
#   url = doc.css("a").attr("href").text
# end





# name = get_name
# binding.pry
# price = get_price
# url = get_url

# def get_shoes
# (0...price.size).each do |index|
#   puts "--- index: #{index +1} ---"
# puts "Name: #{name[index]} | Price: #{price[index]}"
# puts "URL:  #{url[index]}"
# CliProject::Shoe.new(name, price, url)
#   end
# end

# binding.pry
# end