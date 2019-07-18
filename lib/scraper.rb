
class CliProject::Scraper
  
  def self.get_page
    doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-nikeid-lifestyle-shoes/1k9Z7puZoneZoi3",'User-Agent' => 'ruby'))
    doc.css(".grid-item.nikeid").each do |item|
    name = item.css(".product-name").css("p").text
    price = item.css(".product-price").css("span.local").text
    url = item.attr("data-pdpurl")
    CliProject::Shoe.new(name, price, url)
  end
end

  def self.get_shoe_details(shoe)
    doc = Nokogiri::HTML(open(shoe.url,'User-Agent' => 'ruby'))
    shoe.description = doc.css(".pi-sub-title p").text
  end
end 


