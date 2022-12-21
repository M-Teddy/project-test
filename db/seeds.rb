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
user1 = User.create!(email: "certif@certif.com", password: "password")

file = URI.open("https://www.turbo.fr/sites/default/files/styles/article_690x405/public/2020-07/Ferrari-F430-5.jpg.webp?itok=5vAHeXnD")
car = Car.new(brand: "ferrari", model: "F430", color: "red", price: 800, user: user)
car.photo.attach(io: file, filename: "Ferrari-F430-5.jpg", content_type: "image/jpg")
car.save

file = URI.open("https://auto.ironhorse.ru/wp-content/uploads/2019/06/Clio-5-rs-line.jpg")
car1 = Car.new(brand: "ferrari", model: "F430", color: "red", price: 800, user: user)
car1.photo.attach(io: file, filename: "Ferrari-F430-5.jpg", content_type: "image/jpg")
car1.save

puts 'Seed: Finished seeding!'
