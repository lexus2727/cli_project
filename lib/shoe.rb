class CliProject::Shoe
  attr_accessor :name, :price, :url, :description
  
  @@all = []
  
  def initialize(name, price, url)
    @name = name
    @price = price
    @url = url
    save
  end 
 
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end

  def self.find_by_index(index)
    @@all[index]
  end 
 
  def add_description(index)
    shoe = self.class.find_by_index(index)
    self.description = CliProject::Scraper.get_shoe_details(shoe)
    self.description
  end   
end
