require_relative '../config/environment.rb'


artist1 = Artist.new("Ollie Fischer", 10)
artist2 = Artist.new("Beatrice Anthony", 5)
artist3 = Artist.new("Elise Lyons", 1)
artist4 = Artist.new("Damon Walmsley", 15)
artist5 = Artist.new("Reeva Morgan", 7)

gallery1 = Gallery.new("Gonzales Gallery", "Los Angeles")
gallery2 = Gallery.new("Clemons Gallery", "San Francisco")
gallery3 = Gallery.new("Tait Gallery", "Seattle")
gallery4 = Gallery.new("Mccoy Gallery", "San Diego")
gallery5 = Gallery.new("Montgomery Gallery", "Portland")

painting1 = Painting.new(artist3, gallery2, "The Nerd", 12000)
painting2 = Painting.new(artist1, gallery5, "The Flower", 5000)
painting3 = Painting.new(artist2, gallery1, "Nightfall", 8000)
painting4 = Painting.new(artist1, gallery4, "Space", 900)
painting5 = Painting.new(artist2, gallery5, "Sunset in Denver", 22000)
painting6 = Painting.new(artist4, gallery3, "The Mountains", 800)
painting7 = Painting.new(artist2, gallery4, "The Ocean", 300)
painting8 = Painting.new(artist5, gallery1, "Trees in Kansas", 4000)

binding.pry

puts "Bob Ross rules."
