# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.destroy_all
Server.destroy_all
Check.destroy_all

Food.create(name: "Spaghetti", price: 14.99, food_type: "Pasta")
Food.create(name: "Lasagna", price: 14.99, food_type: "Pasta")
Food.create(name: "Chicken Parmesan", price: 16.99, food_type: "Chicken")
Food.create(name: "3 Meatballs", price: 5.99, food_type: "Appetizer")
Food.create(name: "Cheese Pizza Slice", price: 8.99, food_type: "Pizza")

Server.create(name: "Steve", pin: 1234)

Check.create(paid_status: "Unpaid", server_id: Server.last.id)