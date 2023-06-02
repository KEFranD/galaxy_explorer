# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Planet.destroy_all

puts "Creating planets..."
mars = { name: "Mars", description: "Red Planet", location: "Solar System", price: "1 000 000 $", rating: 5 }
sun = { name: "Sun", description: "Very hot", location: "Solar System", price: "1 000 000 000 $", rating: 4 }
arrakis = { name: "Arrakis", description: "Desert", location: "Canopus system", price: "1 000 000 $", rating: 5 }
mercury = { name: "Mercury", description: "Small planet", location: "Solar System", price: "1 500 000 $", rating: 3 }
saturn = { name: "Saturn", description: "Gas Planet", location: "Solar System", price: "1 000 300 $", rating: 4 }

[mars, sun, arrakis, mercury, saturn].each do |attributes|
  planet = Planet.create!(attributes)
  puts "Created #{planet.name}"
end
puts "Finished!"
