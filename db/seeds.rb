# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"
require 'uri'

User.destroy_all
puts "Creating users"

owner_1 = { email: "owner_1@example.com", password: "123456", first_name: "Oscar", last_name: "Renter", owner: true }
owner_2 = { email: "owner_2@example.com", password: "123456", first_name: "Olaf", last_name: "Renter", owner: true }
owner_3 = { email: "owner_3@example.com", password: "123456", first_name: "Omar", last_name: "Renter", owner: true }
renter_1 = { email: "renter_1@example.com", password: "123456", first_name: "Rita", last_name: "Renter", owner: false }
renter_2 = { email: "renter_2@example.com", password: "123456", first_name: "Ralf", last_name: "Renter", owner: false }
renter_3 = { email: "renter_3@example.com", password: "123456", first_name: "Ron", last_name: "Renter", owner: false }

users = [owner_1, owner_2, owner_3, renter_1, renter_2, renter_3]
users.each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.first_name}"
end
puts "Finished!"

puts "Deleting bikes from database..."
Bike.destroy_all
puts "Creating bikes..."

default_descr = "This bike is a great bike that you will love to ride. It is smooth and fast enough to satisfy any rider. You can go where you wish to at your rythm without worrying of the quality of this bike. So get the best out of it. Enjoy it!"

bike_r1 = { name: "scott white", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 55, description: default_descr, address: "Rue Voltaire 12, 1210 Geneve  Switzerland", user: User.first }
bike_r2 = { name: "scott grey/yellow", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.first }
bike_r3 = { name: "scott white premium", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.first }
bike_r4 = { name: "scott black", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.first }
bike_r5 = { name: "scott yellow", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Rue Saint-Pierre 3, 1003 Lausanne  Switzerland", user: User.first }
bike_m1 = { name: "Scott Genius 740", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 80, description: default_descr, address: "Rue de la Borde 26B, 1018 Lausanne  Switzerland", user: User.second }
bike_m2 = { name: "Scott Gambler 720", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Av. Marc-Dufour 57, 1007 Lausanne  Switzerland", user: User.second }
bike_m3 = { name: "BMC Black", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 150, description: default_descr, address: "Avenue Marc-Dufour 57, 1007 Lausanne  Switzerland", user: User.second }
bike_m4 = { name: "BMC Red", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 180, description: default_descr, address: "Rue Saint-Pierre 3, 1003 Lausanne  Switzerland", user: User.second }
bike_m5 = { name: "BMC Grey", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 190, description: default_descr, address: "Rue du Grand-Pr?? 2B, 1007 Lausanne  Switzerland", user: User.second }
bike_e1 = { name: "Scott E-sub Men", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "Rte de Cossonay 66, 1008 Prilly  Switzerland", user: User.first }
bike_e2 = { name: "Scott E-sub Unisex", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "Rue Liotard 50, 1202 Gen??ve  Switzerland", user: User.first }
bike_e3 = { name: "Scott E-silence speed", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Rue Liotard 20, 1202 Gen??ve Lausanne  Switzerland", user: User.second }
bike_j1 = { name: "Scott Red Junior", category: Bike.categories[:mountain], size: Bike.sizes[:junior], price: 20, description: default_descr, address: "Rue Saint-Pierre 3, 1003 Lausanne  Switzerland", user: User.third }
bike_j2 = { name: "Scott Black Junior", category: Bike.categories[:mountain], size: Bike.sizes[:junior], price: 30, description: default_descr, address: "Rue de la Borde 26B, 1018 Lausanne Switzerland  Switzerland", user: User.third }
bike_j3 = { name: "Scott E-Green Junior", category: Bike.categories[:electric], size: Bike.sizes[:junior], price: 50, description: default_descr, address: "Bd de Saint-Georges 8, 1205 Gen??ve  Switzerland", user: User.third }

bikes = [bike_r1, bike_r2, bike_m1, bike_m2]
photo_urls = [
  "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661518586/Wagon_Bikes/scott%20white.jpg",
  "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661518842/Wagon_Bikes/scott%20grey%20yellow.jpg",
  "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661518901/Wagon_Bikes/Scott%20Genius%20740.jpg",
  "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661518976/Wagon_Bikes/gambler-720-bcyclet-rental-mtb-downhill-reduite_sh5kgo.jpg"
]
bikes.each_with_index do |attributes, idx|
  bike = Bike.create!(attributes)
  io = URI.open(photo_urls[idx])
  filename = "#{bike.name}.png"
  content_type = "image/png"
  bike.photo.attach(io:, filename:, content_type:)
  puts "Created #{bike.name}"
end
puts "Finished!"
