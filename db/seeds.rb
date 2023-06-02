require "open-uri"
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
file = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1685682764/Galaxy-Explorer/mars.png")
mars = Planet.create(
  name: "Mars",
  description: "Red Planet",
  location: "Solar System",
  price: "1 000 000 $",
  rating: 5
)
mars.photo.attach(io: file, filename: "mars.jpg", content_type: "image/jpg")
mars.save
puts "Mars created"

file = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1685682764/Galaxy-Explorer/neptune.png")
neptune = Planet.create(
  name: "Neptune",
  description: "Blue planet",
  location: "Solar System",
  price: "1 000 000 000 $",
  rating: 4
)
neptune.photo.attach(io: file, filename: "sun.jpg", content_type: "image/jpg")
neptune.save
puts "Neptune created"

file = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1685706353/Galaxy-Explorer/arrakis.png")
arrakis = Planet.create(
  name: "Arrakis",
  description: "Desert",
  location: "Canopus system",
  price: "1 000 000 $",
  rating: 5
)
arrakis.photo.attach(io: file, filename: "Arrakis.jpg", content_type: "image/jpg")
arrakis.save
puts "Arrakis created"

file = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1685688251/Galaxy-Explorer/mercury.png")
mercury = Planet.create(
  name: "Mercury",
  description: "Small planet",
  location: "Solar System",
  price: "1 500 000 $",
  rating: 3
)
mercury.photo.attach(io: file, filename: "Mercury.jpg", content_type: "image/jpg")
mercury.save
puts "Mercury created"

file = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1685682764/Galaxy-Explorer/saturn.png")
saturn = Planet.create(
  name: "Saturn",
  description: "Gas Planet",
  location: "Solar System",
  price: "1 000 300 $",
  rating: 4
)
saturn.photo.attach(io: file, filename: "saturn.jpg", content_type: "image/jpg")
saturn.save
puts "Saturn created"
# sun = { name: "Sun", description: "Very hot", location: "Solar System", price: "1 000 000 000 $", rating: 4 }
# arrakis = { name: "Arrakis", description: "Desert", location: "Canopus system", price: "1 000 000 $", rating: 5 }
# mercury = { name: "Mercury", description: "Small planet", location: "Solar System", price: "1 500 000 $", rating: 3 }
# saturn = { name: "Saturn", description: "Gas Planet", location: "Solar System", price: "1 000 300 $", rating: 4 }

# [mars].each do |attributes|
#   planet = Planet.create!(attributes)
#   puts "Created #{planet.name}"
# end
puts "Finished!"
# sun, arrakis, mercury, saturn
