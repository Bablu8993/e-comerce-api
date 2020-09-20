# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.create(name: "bablu patel 1", email: "bablu_1@gmail.com", password:"Test@123", password_confirmation:"Test@123")
  User.create(name: "bablu patel 2", email: "bablu_2@gmail.com", password:"Test@123", password_confirmation:"Test@123")
  User.create(name: "bablu patel 3", email: "bablu_3@gmail.com", password:"Test@123", password_confirmation:"Test@123")
  User.create(name: "bablu patel 4", email: "bablu_4@gmail.com", password:"Test@123", password_confirmation:"Test@123")
  User.create(name: "bablu patel 5", email: "bablu_5@gmail.com", password:"Test@123", password_confirmation:"Test@123")



  Product.create(name:"prodcut_1", description:"description_1", price: 1254, make: 2020)
  Product.create(name:"prodcut_2", description:"description_2", price: 1235, make: 2010)
  Product.create(name:"prodcut_3", description:"description_3", price: 1233, make: 2019)
  Product.create(name:"prodcut_4", description:"description_4", price: 1243, make: 2020)
  Product.create(name:"prodcut_5", description:"description_5", price: 1289, make: 2030)
  Product.create(name:"prodcut_6", description:"description_6", price: 4934, make: 2040)