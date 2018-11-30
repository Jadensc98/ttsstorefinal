# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Category.destroy_all
categories = Category.create([{name: "Men's Shirts", gender: "male"}, {name: "Men's Shoes", gender: "male"}, 
  {name: "Men's Accessories", gender: "male"}, {name: "Men's Pants", gender: "male"}, {name: "Furniture", gender: "none"}, 
  {name: "Women's Shirts", gender: "female"}, {name: "Women's Shoes", gender: "female"}, {name: "Women's Pants", gender: "female"}, {name: "Women's Accessories", gender: "female"}])


Product.create(name: 'Expensive Shirt', price: 500, quantity: 100, description: 'A very expensive shirt', brand: 'Gucci', category_id: 1)
Product.create(name: 'Expensive couch', price: 1200, quantity: 400, description: 'A very expensive couch', brand: 'Ikea', category_id: 5)
