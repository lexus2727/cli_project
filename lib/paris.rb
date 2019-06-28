class ParisTour
  attr_accessor :name, :duration, :price
  
  @@all = []
  
  def initialize(name, duration, price)
    @name = name
    @duration = duration
    @price = price
  end 
 
 def self.all
   @@all
 end
  
 def save
  self.class.all << self
 end
 
 def self.create(name, duration, price)
   new_tour = self.new(name, duration, price)
   new_tour.save
   new_tour
 end
  
end

mock_data = [{name: "Moulin Rouge", duration: "2 hours", price: "$112"}, {name: "Louvre", duration: "3 hours", price: "$70" }]

mock_data.each do |tour|
  name = tour[:name]
  duration = tour[:duration]
  price = tour[:price]
  ParisTour.create(name, duration, price)
end