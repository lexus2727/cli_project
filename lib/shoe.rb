class CliProject::Shoe
  attr_accessor :name, :price, :url, :details
  
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
  end
