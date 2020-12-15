require_relative '../config/environment.rb'

# ARTIST
gogh = Artist.new("Gogh", 10)
monet = Artist.new("Monet", 25)

# GALLERY
nyc = Gallery.new("Metropolitan Museum of Art", "NYC")
paris = Gallery.new("Louvre", "Paris")
florence = Gallery.new("Uffizi Gallery", "Florence")

# PAINTING
red = Painting.new("Red Painting", 1000, gogh, nyc)
blue = Painting.new("Blue Painting", 2500, gogh, paris)
yellow = Painting.new("Yellow Painting", 5000, monet, nyc)

binding.pry

puts "Bob Ross rules."
