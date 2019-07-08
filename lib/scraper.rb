require 'open-uri'
require 'nokogiri'


class Scraper
  
def get_page
 page = Nokogiri::HTML(open
end

def get_names
end
 

def get_prices
  
end



scraper = Scraper.new
names = get_name
prices = get_price

def get_shoes
(0...prices.size).each do |index|
  puts "--- index: #{index +1} ---"
  puts "Name: #{names[index]} | price: #{prices[index]}"
  end
end
 