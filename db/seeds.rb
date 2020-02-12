# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Modification.destroy_all
Order.destroy_all
Check.destroy_all
Food.destroy_all
Server.destroy_all

Food.create(name: "Caprese Salad", price: 9.99, food_type: "Appetizer")
Food.create(name: "House Salad", price: 7.99, food_type: "Appetizer")
Food.create(name: "Caesar Salad", price: 10.99, food_type: "Appetizer")
Food.create(name: "Bruschetta", price: 7.99, food_type: "Appetizer")
Food.create(name: "Three Meatballs", price: 5.99, food_type: "Appetizer")
Food.create(name: "Italian Bread with Olive Oil, Balsamic Vinegar", price: 4.99, food_type: "Appetizer")
Food.create(name: "Spaghetti", price: 12.99, food_type: "Pasta")
Food.create(name: "Lasagna", price: 14.99, food_type: "Pasta")
Food.create(name: "Lobster Ravioli", price: 16.99, food_type: "Pasta")
Food.create(name: "Carbonara", price: 15.99, food_type: "Pasta")
Food.create(name: "Sweet Potato Gnocchi", price: 12.99, food_type: "Pasta")
Food.create(name: "Chicken Parmesan", price: 16.99, food_type: "Entree")
Food.create(name: "Tagliata", price: 25.99, food_type: "Entree")
Food.create(name: "Branzino", price: 22.99, food_type: "Entree")
Food.create(name: "Salmone", price: 23.99, food_type: "Entree")
Food.create(name: "Risotto with Mushrooms and Capers", price: 17.99, food_type: "Entree")
Food.create(name: "Prime Dry-Aged Bistecca Fiorentina", price: 65.99, food_type: "Entree")
Food.create(name: "Cheese Pizza Slice", price: 5.99, food_type: "Pizza")
Food.create(name: "Margherita Pizza Slice", price: 6.99, food_type: "Pizza")
Food.create(name: "Prosciutto and Arugula Pizza Slice", price: 7.99, food_type: "Pizza")
Food.create(name: "Bianca Pizza Slice", price: 5.99, food_type: "Pizza")
Food.create(name: "Tiramisu", price: 10.99, food_type: "Dessert")
Food.create(name: "Cannoli", price: 8.99, food_type: "Dessert")
Food.create(name: "Panna Cotta", price: 10.99, food_type: "Dessert")
Food.create(name: "Affogato", price: 5.99, food_type: "Dessert")

Server.create(name: "Steve", pin: 1234)

Check.create(paid_status: "Unpaid", server_id: Server.last.id)

order = Order.create(check_id: Check.last.id, food_id: Food.last.id)

Modification.create(note: "NO sugar", price: 0.0, order_id: Order.last.id)
Modification.create(note: "Extra cheese", price: 0.50, order_id: Order.last.id)
