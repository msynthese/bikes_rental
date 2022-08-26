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

bike_r1 = { name: "scott white", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 55, description: default_descr, address: "Rue Voltaire 12, 1210 Geneva", user: User.first, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/Solace-20-2016-Bcyclet-1.jpg" }
bike_r2 = { name: "scott grey/yellow", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "Einschlussstrasse 23, 8401 Lausanne  Switzerland", user: User.first, picture_url: "https://bcyclet.com/wp-content/uploads/2020/01/Solace-premium-pads-1.jpg" }
bike_r3 = { name: "scott white premium", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "Rue Adrien-Lachenal 28, 1207 Lausanne  Switzerland", user: User.first, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/Addict-Premium-disc-Bcyclet-HQ-2.jpg" }
bike_r4 = { name: "scott black", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Steinwiesstrasse 12, 8032 Lausanne  Switzerland", user: User.first, picture_url: "https://bcyclet.com/wp-content/uploads/2020/01/scott-addict-ultimate-disc-bcyclet-rental-road-bike-reduite.jpg" }
bike_r5 = { name: "scott yellow", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Tössertobelstrasse 25, 8401 Lausanne  Switzerland", user: User.first, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/scott-addict-bcyclet-rental-road-bike-reduite.jpg" }
bike_r6 = { name: "scott black/red", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 125, description: default_descr, address: "Strada da Pambi 32,  Geneve  Switzerland", user: User.first, picture_url: "https://bcyclet.com/wp-content/uploads/2020/01/bcyclet-ultimate-pads-super-light-bike-rental-1.jpg" }
bike_r7 = { name: "scott red", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "En Budron G 34, 1052 Geneve  Switzerland", user: User.first, picture_url: "https://bcyclet.com/wp-content/uploads/2020/01/electric-road-bike-orbea-gain-low.jpg" }
bike_r8 = { name: "prestige racing", category: Bike.categories[:road], size: Bike.sizes[:adult], price: 175, description: default_descr, address: "Pré-l'Évêque 20, 1207 Geneve  Switzerland", user: User.first, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/Lampo-M.jpg" }

bike_m1 = { name: "Scott Genius 740", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 80, description: default_descr, address: "Rue Voltaire 12, 1210 Geneve  Switzerland", user: User.second, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/enduro-genius-740-mtb-bcyclet-reduite-2.jpg" }
bike_m2 = { name: "Scott Gambler 720", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "Rue Voltaire 12, 1210 Geneve  Switzerland", user: User.second, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/gambler-720-bcyclet-rental-mtb-downhill-reduite.jpg" }
bike_m3 = { name: "BMC Black", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 150, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.second, picture_url: "https://www.bmc-switzerland.com/media/catalog/product/cache/86a9a13297e2ff4b2d593e234876b106/b/m/bmc-22-10515-006-bmc-twostroke-01-two-mountain-bike-anthracite-01.png" }
bike_m4 = { name: "BMC Red", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 180, description: default_descr, address: "avenue de France 23, 1004 Lausanne Switzerland", user: User.second, picture_url: "https://www.bmc-switzerland.com/media/catalog/product/cache/86a9a13297e2ff4b2d593e234876b106/b/m/bmc-22-10515-008-bmc-twostroke-01-four-mountain-bike-red-01.png" }
bike_m5 = { name: "BMC Grey", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 190, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.second, picture_url: "https://media.alltricks.com/large/209103960d188b7a086f5.50729917.jpg" }
bike_m6 = { name: "BMC Blue", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 120, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.second, picture_url: "https://media.alltricks.com/medium/2127663614de9588cfb81.39705209.jpg" }
bike_m7 = { name: "BMC Green", category: Bike.categories[:mountain], size: Bike.sizes[:adult], price: 140, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.second, picture_url: "https://media.alltricks.com/medium/2134104614457709e9912.47404173.jpg" }

bike_e1 = { name: "Scott E-sub Men", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "Rue Voltaire 12, 1210 Geneve  Switzerland", user: User.first, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/scott-eride-10-bcyclet-rental-electric-trekking-rate.jpg" }
bike_e2 = { name: "Scott E-sub Unisex", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "Rue Voltaire 12, 1210 Geneve Switzerland", user: User.first, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/scott-eride-10-lady-bcyclet-rental-electric-trekking-1.jpg" }
bike_e3 = { name: "Scott E-silence speed", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.second, picture_url: "https://bcyclet.com/wp-content/uploads/2021/10/scott-electric-trekking-45-bike-rental-bcyclet-reduite-1.jpg" }
bike_e4 = { name: "Scott E-Genius", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.second, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/scott-eride-720-bcyclet-rental-mtb-electric-full-suspension-reduite.jpg" }
bike_e5 = { name: "Scott E-Scale", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 75, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.third, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/E-Scale-MTB-Bcyclet-HQ-2.jpg" }
bike_e6 = { name: "Road Orbea E-Bike", category: Bike.categories[:electric], size: Bike.sizes[:adult], price: 100, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.third, picture_url: "https://bcyclet.com/wp-content/uploads/2019/09/E-road-bike.png" }

bike_j1 = { name: "Scott Red Junior", category: Bike.categories[:mountain], size: Bike.sizes[:junior], price: 20, description: default_descr, address: "Rue Voltaire 12, 1210 Geneve Switzerland", user: User.third, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/Junior-bike-Bcyclet-HQ-2.jpg" }
bike_j2 = { name: "Scott Black Junior", category: Bike.categories[:mountain], size: Bike.sizes[:junior], price: 30, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.third, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/scott-scale-junior-26-bcyclet-bike-rental-1.jpg" }
bike_j3 = { name: "Scott E-Green Junior", category: Bike.categories[:electric], size: Bike.sizes[:junior], price: 50, description: default_descr, address: "avenue de France 23, 1004 Lausanne  Switzerland", user: User.third, picture_url: "https://bcyclet.com/wp-content/uploads/2019/11/scott-roxter-eride-bcyclet-rental-electric-trekking-junior-reduite-1.jpg" }

bikes = [bike_r0, bike_r1, bike_r2, bike_r3, bike_r4, bike_r5, bike_r6, bike_r7, bike_r8, bike_m1, bike_m2, bike_m3, bike_m4, bike_m5, bike_m6, bike_m7, bike_e1, bike_e2, bike_e3, bike_e4, bike_e5, bike_e6, bike_j1, bike_j2, bike_j3]
bikes.each do |attributes|
  bike = Bike.create!(attributes)
  puts "Created #{bike.name}"
end
puts "Finished!"
