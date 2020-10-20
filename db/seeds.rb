# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Receipt.destroy_all
FoodItem.destroy_all

10.times do
user = User.create(name: Faker::Name.name, age: Faker::Number.number(digits: 2))
end

10.times do
  receipt= Receipt.create(name: Faker::Name.name, price: Faker::Number.number(digits: 1), user_id: User.all.sample.id)
end

10.times do 
  FoodItem.create(name: Faker::Food.dish, price: Faker::Number.number(digits: 1), spicy: Faker::Food.spice, food_type: Faker::Food.ingredient )
end

# FoodItem.create(name: "Chicken", price: 5, spicy: "too hot", food_type: "Meal")