# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(firstname: 'Adam', lastname: 'Szczombrowski', email: 'adam.szczombrowski@gmail.com', is_admin: true, password: '12345678')
User.create(firstname: 'Jon', lastname: 'Shortbeard', email: 'jon.shortbeard@gmail.com', is_admin: false, password: '12345678')
User.create(firstname: 'John', lastname: 'Longbeard', email: 'john.longbeard@gmail.com', is_admin: false, password: '12345678')
User.create(firstname: 'Kate', lastname: 'Wozniak', email: 'kate.wozniak@gmail.com', is_admin: false, password: '12345678')
User.create(firstname: 'Leo', lastname: 'Messi', email: 'leo.messi@gmail.com', is_admin: false, password: '12345678')
User.create(firstname: 'Andres', lastname: 'Iniesta', email: 'andres.iniesta@gmail.com', is_admin: false, password: '12345678')

Category.create(name: 'Shoes')

Product.create(title: 'Nike air', description: 'Super light running shoes', price: 200,category_id: 1, user_id:1)
Product.create(title: 'Converse', description: 'Ultra popular shoes', price: 300 ,category_id:1, user_id: 2)
Product.create(title: 'Reebok', description: 'Are they really reebok? Or maybe those are Nike. Find out for yourself', price: 400 ,category_id: 1, user_id: 3)
Product.create(title: 'Oxfords', description: 'One word: classy', price: 500 ,category_id: 1, user_id: 4)
Product.create(title: 'Adidas', description: '3 stripes. Is there anything to add? ', price: 600 ,category_id: 1, user_id: 5 )

Review.create(content: 'Nice shoes', rating: 2, user_id: 1, product_id: 1)
Review.create(content: 'Very nice shoes', rating: 3, user_id: 2, product_id: 2)
Review.create(content: 'Brilliant' , rating: 5, user_id: 3, product_id: 3)
Review.create(content: 'Excellent' , rating: 4, user_id: 4, product_id: 4)
Review.create(content: 'Amazing' , rating: 1, user_id: 5, product_id: 5)
