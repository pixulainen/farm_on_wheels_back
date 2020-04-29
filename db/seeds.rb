# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
     Category.create(name:"Vegetables")
     Category.create(name:"Fruits")
     Category.create(name:"Dairy")

     jones =  Seller.create(first_name: "Jones", last_name: "Jay", email: "jj@email.com", password:"test", phone_number: "0748123456", store_name: "JJ Farm", store_description: "Welcome to JJ shop,we started to grow organic vegetables in 1993 since then he's been commited to supply London's market with the best vegetables" , store_photos: "https://img.etimg.com/thumb/width-640,height-480,imgsize-120883,resizemode-1,msid-65900138/small-and-marginal-farmers-are-to-see-better-days-with-a-free-of-cost-farmer-to-farmer-rental-program-through-this-revolutionary-app-by-tafes-jfarm-services.jpg", store_location: "Croydon" )

    jordan = Seller.create(first_name: "Michael", last_name: "Jordan", email: "mj@nba.com", password:"test", phone_number: "0748123456", store_name: "NBA", store_description: "NBA store is created as a test to seed the database" , store_photos: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNkx9VDxHJ_IOx-R-yrXPfG8IVip-TW_kHGimw5toOBkG7jK1SGw&s", store_location: "London" )
    jd =  Seller.create(first_name: "John", last_name: "Doe", email: "john@doe.com", password:"test", phone_number: "0748123456", store_name: "JD Organics", store_description: "JD started to grow organic vegetables in 1993 since then he's been commited to supply London's market with the best vegetables" , store_photos: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNkx9VDxHJ_IOx-R-yrXPfG8IVip-TW_kHGimw5toOBkG7jK1SGw&s", store_location: "London" )
    Product.create(name: "Apple", description: "Granny Smith", price_kg: "2", quality: "Fresh", stock: 50, picture: "https://media.mnn.com/assets/images/2015/01/grannysmith.jpg.653x0_q80_crop-smart.jpg", seller_id: 1,category_id:1)
    Product.create(name: "Apple", description: "Granny Smith", price_kg: "2", quality: "Fresh", stock: 50, picture: "https://media.mnn.com/assets/images/2015/01/grannysmith.jpg.653x0_q80_crop-smart.jpg", seller_id: 3,category_id:1)
    Product.create(name: "Carrot", description: "Organic Carrots", price_kg: "2", quality: "Fresh", stock: 50, picture: "https://www.tasteofhome.com/wp-content/uploads/2019/01/carrots-shutterstock_789443206-1200x675.jpg", seller_id: 1,category_id:2)
    Product.create(name: "Carrot", description: "Organic Carrots", price_kg: "2", quality: "Fresh", stock: 50, picture: "https://www.tasteofhome.com/wp-content/uploads/2019/01/carrots-shutterstock_789443206-1200x675.jpg", seller_id: 3,category_id:2)
    puts " Seeded!,Seeded!,Seeded!"