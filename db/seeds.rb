# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

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

bike_r1 = { name: "scott white", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 55, description: default_descr, address: "Rue Voltaire 12, 1210 Geneve  Switzerland", user: User.first, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661441669/Wagon_Bikes/scott%20white.jpg" }
bike_r2 = { name: "scott grey/yellow", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.first, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661441786/Wagon_Bikes/scott%20grey%20yellow.jpg" }
bike_r3 = { name: "scott white premium", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.first, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661441861/Wagon_Bikes/scott%20white%20premium.jpg" }
bike_r4 = { name: "scott black", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.first, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661457592/Wagon_Bikes/scott%20black.jpg" }
bike_r5 = { name: "scott yellow", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Rue Saint-Pierre 3, 1003 Lausanne  Switzerland", user: User.first, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661457680/Wagon_Bikes/scott%20yellow.jpg" }
bike_r6 = { name: "scott black/red", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 125, description: default_descr, address: "Rue du Port-Franc 8, 1003 Lausanne  Switzerland", user: User.first, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661457734/Wagon_Bikes/scott%20black%20red.jpg" }
bike_r7 = { name: "scott red", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Rue du Port-Franc 8, 1003 Lausanne  Switzerland", user: User.first, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661457818/Wagon_Bikes/orbea%20red.jpg" }
bike_r8 = { name: "prestige racing", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 175, description: default_descr, address: "Rue de la Borde 26B, 1018 Lausanne Switzerland", user: User.first, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661457882/Wagon_Bikes/prestige%20racing.jpg" }
bike_m1 = { name: "Scott Genius 740", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 80, description: default_descr, address: "Rue de la Borde 26B, 1018 Lausanne  Switzerland", user: User.second, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661457942/Wagon_Bikes/scott%20genius%20740.jpg" }
bike_m2 = { name: "Scott Gambler 720", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Av. Marc-Dufour 57, 1007 Lausanne  Switzerland", user: User.second, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458006/Wagon_Bikes/scott%20gambler%20720.jpg" }
bike_m3 = { name: "BMC Black", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 150, description: default_descr, address: "Avenue Marc-Dufour 57, 1007 Lausanne  Switzerland", user: User.second, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458134/Wagon_Bikes/bmc-22-10515-006-bmc-twostroke-01-two-mountain-bike-anthracite-01_dclrmo.png" }
bike_m4 = { name: "BMC Red", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 180, description: default_descr, address: "Rue Saint-Pierre 3, 1003 Lausanne  Switzerland", user: User.second, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458207/Wagon_Bikes/BMC%20red.png" }
bike_m5 = { name: "BMC Grey", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 190, description: default_descr, address: "Rue du Grand-Pré 2B, 1007 Lausanne  Switzerland", user: User.second, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458274/Wagon_Bikes/BMC%20Grey.jpg" }
bike_m6 = { name: "BMC Blue", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 120, description: default_descr, address: "Rue du Grand-Pré 2B, 1007 Lausanne  Switzerland", user: User.second, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458359/Wagon_Bikes/BMC%20Blue.jpg" }
bike_m7 = { name: "BMC Green", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 140, description: default_descr, address: "Rte des Flumeaux 25, 1008 Prilly  Switzerland", user: User.second, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458424/Wagon_Bikes/BMC%20Green.jpg" }
bike_e1 = { name: "Scott E-sub Men", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "Rte de Cossonay 66, 1008 Prilly  Switzerland", user: User.first, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458502/Wagon_Bikes/Scott%20E-sub%20Men.jpg" }
bike_e2 = { name: "Scott E-sub Unisex", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "Rue Liotard 50, 1202 Genève  Switzerland", user: User.first, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458557/Wagon_Bikes/Scott%20E-sub%20Unisex.jpg" }
bike_e3 = { name: "Scott E-silence speed", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Rue Liotard 20, 1202 Genève Lausanne  Switzerland", user: User.second, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458614/Wagon_Bikes/Scott%20E-silence%20speed.jpg" }
bike_e4 = { name: "Scott E-Genius", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Rue du Stand 36, 1204 Genève  Switzerland", user: User.second, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458691/Wagon_Bikes/Scott%20E-Genius.jpg" }
bike_e5 = { name: "Scott E-Scale", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "Rue Saint-Pierre 3, 1003 Lausanne  Switzerland", user: User.third, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458769/Wagon_Bikes/Scott%20E-Scale.jpg" }
bike_e6 = { name: "Specialized Road E-Bike", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Rue de Fribourg 6, 1201 Genève  Switzerland", user: User.third, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661458923/Wagon_Bikes/Specialized%20Road%20E-Bike.jpg" }
bike_j1 = { name: "Scott Red Junior", category: Bike.categories[:mountain], size: Bike.sizes[:junior], price: 20, description: default_descr, address: "Rue Saint-Pierre 3, 1003 Lausanne  Switzerland", user: User.third, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661459027/Wagon_Bikes/Junior-bike-Bcyclet-HQ-2_b3u3hv.jpg" }
bike_j2 = { name: "Scott Black Junior", category: Bike.categories[:mountain], size: Bike.sizes[:junior], price: 30, description: default_descr, address: "Rue de la Borde 26B, 1018 Lausanne Switzerland  Switzerland", user: User.third, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661459102/Wagon_Bikes/Scott%20black%20junior.jpg" }
bike_j3 = { name: "Scott E-Green Junior", category: Bike.categories[:electric], size: Bike.sizes[:junior], price: 50, description: default_descr, address: "Bd de Saint-Georges 8, 1205 Genève  Switzerland", user: User.third, picture_url: "https://res.cloudinary.com/dmtk7zuvl/image/upload/v1661459191/Wagon_Bikes/scott-roxter-eride-bcyclet-rental-electric-trekking-junior-reduite-1_ugkyhx.jpg" }
bikes = [bike_r1, bike_r2, bike_r3, bike_r4, bike_r5, bike_r6, bike_r7, bike_r8, bike_m1, bike_m2, bike_m3, bike_m4, bike_m5, bike_m6, bike_m7, bike_e1, bike_e2, bike_e3, bike_e4, bike_e5, bike_e6, bike_j1, bike_j2, bike_j3]
bikes.each do |attributes|
  bike = Bike.create!(attributes)
  puts "Created #{bike.name}"
end
puts "Finished!"
