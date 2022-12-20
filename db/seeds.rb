# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
puts 'Seed: Deleting existing records...'


Car.destroy_all

user = User.create!(email: "teddymuller@gmail.com", password: "password")

puts 'Seed: Finished seeding!'
