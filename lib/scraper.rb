require 'pry'
require 'nokogiri'
require 'open-uri'

class Scraper
  
def get_page
 doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-nikeid-lifestyle-shoes/1k9Z7puZoneZoi3",'User-Agent' => 'ruby'))
end
 

def get_names
  name = doc.css(".grid-item-info").css(".product-name").css("p").children.map { |name| name.text}.compact 
end  
 

def get_prices
  price = doc.css(".grid-item-info").css(".product-price").css("span.local").children.map { |name| name.text}.compact
end




scraper = Scraper.new
name = get_name
price = get_price

def get_shoes
(0...prices.size).each do |index|
  puts "--- index: #{index +1} ---"
 puts "Name: #{names[index]} | price: #{prices[index]}"
  end
end
Scraper.new
