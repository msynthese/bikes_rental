# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
puts "Creating users"

renter_1 = { email: "renter_1@example.com", password: "123456", first_name: "Rita", last_name: "Renter", owner: false }
renter_2 = { email: "renter_2@example.com", password: "123456", first_name: "Ralf", last_name: "Renter", owner: false }
renter_3 = { email: "renter_3@example.com", password: "123456", first_name: "Ron", last_name: "Renter", owner: false }
owner_1 = { email: "owner_1@example.com", password: "123456", first_name: "Oscar", last_name: "Renter", owner: true }
owner_2 = { email: "owner_2@example.com", password: "123456", first_name: "Olaf", last_name: "Renter", owner: true }
owner_3 = { email: "owner_3@example.com", password: "123456", first_name: "Omar", last_name: "Renter", owner: true }

users = [renter_1, renter_2, renter_3, owner_1, owner_2, owner_3]
users.each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.email}"
end
puts "Finished!"
