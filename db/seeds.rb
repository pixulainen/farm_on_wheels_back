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
     Category.create(name:"Meat")
     
     jimmy =  Seller.create(first_name: "Jimmy", last_name: "Corey", email: "jc@email.com", password:"test", phone_number: "0748123456", store_name: "Jimmy Corey Farm", store_description: "We run a small farm and we are commited to produce the best quality from happy animals " , store_photos: "https://i.dailymail.co.uk/i/pix/2012/11/16/article-2233920-160EEABB000005DC-883_634x619.jpg", store_location: "London" )
     alex =  Seller.create(first_name: "Alex", last_name: "Tim", email: "at@email.com", password:"test", phone_number: "0456123456", store_name: "Alex Farm", store_description: "Welcome to our shop,we started to grow organic vegetables in 1993 since then he's been commited to supply London's market with the best vegetables" , store_photos: "https://civileats.com/wp-content/uploads/2017/11/171120-beginning-farmers.jpg", store_location: "Croydon" )
     jones =  Seller.create(first_name: "Michael", last_name: "John", email: "jm@email.com", password:"test", phone_number:"0747476456", store_name: "Michael Farm", store_description: "Michael believes in low-­intensity farming, rearing his herd of Sussex cows and Romney sheep on traditional grasses – a slow method which works to create tasty, healthy meat." , store_photos: "https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2Fa3acaa30-2b22-11ea-af3f-b11f88c70ecc.jpg?crop=3000%2C1688%2C0%2C156&resize=1180", store_location: "London" )
     mike =  Seller.create(first_name: "Mike", last_name: "Olaf", email: "mo@email.com", password:"test", phone_number: "0748675456", store_name: "Mike Farm", store_description: "Mike runs a family owned farm,with a 90 acres field where he grows all his fruits." , store_photos: "https://invest-india-revamp-static-files.s3.ap-south-1.amazonaws.com/s3fs-public/inline-images/shutterstock_1116673256%20%281%29.jpg", store_location: "Croydon" )

    #eggs
    Product.create(name: "Organic Eggs", description: "6 Mixed Eggs", price_unit: "2.5", quality: "Fresh", stock: 250, picture: "https://www.seriouseats.com/images/2015/12/20151201-eggs-vicky-wasik.jpg", seller_id: 1,category_id:3)
    Product.create(name: "Organic Eggs", description: "12 Mixed Eggs", price_unit: "4", quality: "Fresh", stock: 100, picture: "https://assets.rebelmouse.io/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy82NDYxMjk3L29yaWdpbi5qcGciLCJleHBpcmVzX2F0IjoxNjQ3NjY0Njg1fQ.jz_cOzAtv3pwn80-8hZTdx-5MejWkPwbxvl6H6QMFmI/img.jpg?width=980", seller_id: 1,category_id:3)
    #milk
    Product.create(name: "Organic Milk", description: "Full Fat", price_unit: "1.5", quality: "Fresh", stock: 100, picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTIV_r4zck0vA_UGeQwJZIg6PHyj9I1gVnWSi7Tk6ucyXY0H9l3&usqp=CAU", seller_id: 1,category_id:3)
    Product.create(name: "Butter", description: "Butter", price_unit: "2", quality: "Fresh", stock: 21, picture: "https://i0.wp.com/post.healthline.com/wp-content/uploads/2019/03/is-butter-bad-for-you-1296x728-feature-1024x575.jpg?w=1155&h=1528", seller_id: 1,category_id:3)
    Product.create(name: "Cheddar Cheese", description: "Somerset Cheddar Cheese", price_unit: "2", quality: "Fresh", stock: 21, picture: "https://images.squarespace-cdn.com/content/v1/59a30ddff5e231745bbe02ac/1571732623141-MU08KW5B4RMMG5BH18FY/ke17ZwdGBToddI8pDm48kPJXHKy2-mnvrsdpGQjlhod7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmihaE5rlzFBImxTetd_yW5btdZx37rH5fuWDtePBPDaHF5LxdCVHkNEqSYPsUQCdT/White+cheddar+blocks.jpg", seller_id: 1,category_id:3)

 

     # meat
    Product.create(name: "Rib Eye Steak", description: "32 Days aged Rib Eye ", price_kg: "32", quality: "Fresh", stock: 61, picture: "https://i0.wp.com/www.johnsaunderson.co.uk/wp-content/uploads/2019/11/22-3.jpg?fit=500%2C500&ssl=1", seller_id: 3,category_id:4)
    Product.create(name: "Fillet Steak", description: "32 Days aged Fillet Steak ", price_kg: "40", quality: "Fresh", stock: 30, picture: "https://www.mccaskiebutcher.co.uk/wp-content/uploads/2019/10/342-1.jpg", seller_id: 3,category_id:4)
    Product.create(name: "Flat Iron Steak", description: "32 Days aged Steak ", price_kg: "29", quality: "Fresh", stock: 20, picture: "https://embed.widencdn.net/img/beef/rnsfu27fjk/320x240px/Flat%20Iron%20Steak.psd?keep=c&u=7fueml", seller_id: 3,category_id:4)
    Product.create(name: "T-Bone Steak", description: "32 Days aged Steak ", price_kg: "45", quality: "Fresh", stock: 27, picture: "https://halalexoticmeats.co.uk/wp-content/uploads/2016/05/image-14.jpeg", seller_id: 3,category_id:4)
    Product.create(name: "Sirloin Steak", description: "32 Days aged Steak ", price_kg: "33", quality: "Fresh", stock: 37, picture: "https://www.farmison.com/thumbs/sirloin-steak.30e5dd53-76e5-4e06-866f-3625714e40ad.square.900x900.jpg", seller_id: 3,category_id:4)

    # Vegetables
    Product.create(name: "Carrot", description: "Organic Carrots", price_kg: "2", quality: "Fresh", stock: 32, picture: "https://www.tasteofhome.com/wp-content/uploads/2019/01/carrots-shutterstock_789443206-1200x675.jpg", seller_id: 2,category_id:1)
    Product.create(name: "Courgette", description: "Organic Courgette", price_kg: "2.5", quality: "Fresh", stock: 14, picture: "https://www.ocado.com/productImages/921/92186011_0_640x640.jpg?identifier=f6c7a748a22850cac8b8c04f3e61c961", seller_id: 2,category_id:1)
    Product.create(name: "Potatoes", description: "Organic Potatoes", price_kg: "2", quality: "Fresh", stock: 55, picture: "https://assets.bonappetit.com/photos/5d7284758d926f0009df5cfc/5:4/w_3165,h_2532,c_limit/Basically-Gojuchang-Chicken-Potato.jpg", seller_id: 2,category_id:1)
    Product.create(name: "Red Onion", description: "Organic Red Onion", price_kg: "2", quality: "Fresh", stock: 12, picture: "https://images.financialexpress.com/2020/01/2-179.jpg?w=1200&h=800&imflag=true", seller_id: 2,category_id:1)
    Product.create(name: "Celery", description: "Organic Celery", price_kg: "1.5", quality: "Fresh", stock: 52, picture: "https://viewremedy.com/wp-content/uploads/2019/08/celery-benefits.jpg", seller_id: 2,category_id:1)
    Product.create(name: "Avocado", description: "Organic Avocado", price_unit: "1", quality: "Fresh", stock: 56, picture: "https://media.self.com/photos/5b43712e4d0c3c282a8878d1/16:9/w_4160,h_2340,c_limit/avocado.jpg", seller_id: 2,category_id:2)
    Product.create(name: "Aubergine", description: "Organic Aubergine", price_kg: "2", quality: "Fresh", stock: 37, picture: "https://www.nhm.ac.uk/content/dam/nhmwww/discover/aubergine-evolution/aubergine-shutterstock-full-width.jpg", seller_id: 2,category_id:1)
    Product.create(name: "Peppers", description: "Organic Peppers", price_kg: "2.5", quality: "Fresh", stock: 19, picture: "https://www.thespruceeats.com/thmb/7uY4AzKFExUYSLmvt1Um5a2bcAc=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/bell-peppers-multi-g18-56a8bebc5f9b58b7d0f4c0f6.jpg", seller_id: 2,category_id:1)
    Product.create(name: "Tomatoes", description: "Organic tomatoes", price_kg: "2", quality: "Fresh", stock: 20, picture: "https://www.organicfacts.net/wp-content/uploads/tomatoes.jpg", seller_id: 2,category_id:1)
    Product.create(name: "Chilli", description: "Organic Chilli", price_kg: "10", quality: "Fresh", stock: 9, picture: "https://www.bhf.org.uk/-/media/new-site-images/informationsupport/heart-matters/december-2019/news/bth/chilli-peppers/chilli-peppers-620x400-ss-noexp.jpg", seller_id: 2,category_id:1)
    Product.create(name: "Romaine Lettuce", description: "Organic Lettuce", price_kg: "2", quality: "Fresh", stock: 25, picture: "https://media4.s-nbcnews.com/j/newscms/2018_01/2281616/180104-romaine-lettuce-mn-0820_ec72c6630954ef7497ec89130e8dc742.fit-760w.jpg", seller_id: 2,category_id:1)



    # Fruits
    Product.create(name: "Oranges", description: "Organic Oranges", price_kg: "3", quality: "Fresh", stock: 43, picture: "https://cdn.britannica.com/24/174524-050-A851D3F2/Oranges.jpg", seller_id: 4,category_id:2)
    Product.create(name: "Strawberry", description: "Organic Strawberry", price_kg: "8", quality: "Fresh", stock: 11, picture: "https://cdn.britannica.com/22/75922-050-D3982BD0/flowers-fruits-garden-strawberry-plant-species.jpg", seller_id: 4,category_id:2)
    Product.create(name: "Apple", description: "Granny Smith", price_kg: "2", quality: "Fresh", stock: 12, picture: "https://media.mnn.com/assets/images/2015/01/grannysmith.jpg.653x0_q80_crop-smart.jpg", seller_id: 4,category_id:2)
    Product.create(name: "Raspberries", description: "Organic Raspberries", price_kg: "10", quality: "Fresh", stock: 23, picture: "https://cdn.shopify.com/s/files/1/1733/7409/products/Raspberries_f9263c6c-e4a7-41d9-b6a5-e795446631e4_x700.jpg?v=1539275589", seller_id: 4,category_id:2)
    Product.create(name: "Blueberries", description: "Organic Blueberries", price_kg: "13.5", quality: "Fresh", stock: 21, picture: "https://www.news-medical.net/image.axd?picture=2020%2F4%2Fshutterstock_321102602_(1).jpg", seller_id: 4,category_id:2)
    Product.create(name: "Banana", description: "Bananas", price_kg: "1.5", quality: "Fresh", stock: 40, picture: "https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1024-80.jpg", seller_id: 4,category_id:2)
    Product.create(name: "Lemon", description: "Lemons", price_kg: "1", quality: "Fresh", stock: 20, picture: "https://cdn.britannica.com/84/188484-050-F27B0049/lemons-tree.jpg", seller_id: 4,category_id:2)
    Product.create(name: "Dragon Fruit", description: "Dragon Fruit", price_kg: "3", quality: "Fresh", stock: 15, picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Pitaya_cross_section_ed2.jpg/1467px-Pitaya_cross_section_ed2.jpg", seller_id: 4,category_id:2)
    Product.create(name: "Kiwi", description: "Kiwi Fruit", price_kg: "4", quality: "Fresh", stock: 19, picture: "https://recipematic.com/wp-content/uploads/2019/07/How-to-Choose-Store-How-to-Use-Kiwi-Fruit-Benefits-of-Kiwi-Fruit-Calories-and-Nutrition-Facts-tips-1200x1253.jpg", seller_id: 4,category_id:2)

    # end
    puts " Seeded!,Seeded!,Seeded!"
