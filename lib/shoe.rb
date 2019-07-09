class CliProject::Shoe
  attr_accessor :name, :price, :url, :description
  
  @@all = []
  
  def initialize(name, price, url, description)
    @name = name
    @price = price
    @url = url
    @description = description
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
