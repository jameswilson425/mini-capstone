# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.create(name: "Record Player", price: 100, description: "Vinyl record player with three speed settings. Includes 7in. record adapter.")

# Product.create(name: "Stereo Receiver", price: 150, image_path: "", description: "200 watt stereo receiver. Includes AM/FM radio adapter.", )

# Product.create(name: "Speakers", price: 75, image_path: "", description: "Two 200-watt stereo speakers.")

Image.create(product_id: 2, url: "https://images.crutchfieldonline.com/ImageHandler/trim/620/378/products/2019/22/779/g779AXR100-F.jpg")
Image.create(product_id: 3, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSKco23hH6tGI30TlZS7Y5EXb0a5ZSPTNzgTw&usqp=CAU")
Image.create(product_id: 1, url: "https://i.ebayimg.com/images/g/TuUAAOSwlkhdvAv5/s-l400.jpg")
Image.create(product_id: 4, url: "https://headphonereview.co/wp-content/uploads/2020/03/51DeUFxuCL._AC_SL1001_.jpg")

Product.create(name: "Record Player", price: 100, description: "Vinyl record player with three speed settings. Includes 7in. record adapter.", inventory: 5, supplier_id: 1)

Product.create(name: "Receiver", price: 150, description: "300 watt tereo reveiver with AM/FM radio. Includes remote controller.", inventory: 7, supplier_id: 2)

Product.create(name: "Speakers", price: 250, description: "350 watt speakers with output configurations.", inventory: 4, supplier_id: 3)

Product.create(name: "Headphones", price: 50, description: "Stereo headphones with cable and bluetooth connections.", inventory: 10, supplier_id: 3)

Supplier.create(name: "Audio Bros", email: "ab@gmail.com", phone_number: "1111234")

Supplier.create(name: "Sound Plus", email: "sp@gmail.com", phone_number: "1111235")

Supplier.create(name: "Speak Up", email: "sup@gmail.com", phone_number: "1111236")
