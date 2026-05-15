# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

restaurants = [
  {
    name: "Ocean Breeze Grill",
    address: "12 Beach Road, Cape Town",
    category: "seafood"
  },
  {
    name: "Mama Mia Pizzeria",
    address: "45 Long Street, Cape Town",
    category: "italian"
  },
  {
    name: "Golden Dragon",
    address: "88 Main Road, Johannesburg",
    category: "chinese"
  },
  {
    name: "Spice Route",
    address: "23 Victoria Street, Durban",
    category: "indian"
  },
  {
    name: "Burger Haven",
    address: "101 Market Avenue, Pretoria",
    category: "american"
  },
  {
    name: "Sakura Sushi",
    address: "9 River Lane, Cape Town",
    category: "japanese"
  },
  {
    name: "Le Petit Cafe",
    address: "17 Church Square, Stellenbosch",
    category: "french"
  },
  {
    name: "Taco Fiesta",
    address: "56 Palm Street, Port Elizabeth",
    category: "mexican"
  },
  {
    name: "Green Garden Vegan",
    address: "73 Forest Drive, Cape Town",
    category: "vegan"
  },
  {
    name: "Braai House",
    address: "200 Freedom Blvd, Johannesburg",
    category: "south african"
  }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "#{Restaurant.count} restaurants created!"
