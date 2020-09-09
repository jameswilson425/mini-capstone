# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "Record Player", price: 100, image_path: "", description: "Vinyl record player with three speed settings. Includes 7in. record adapter.")

Product.create(name: "Stereo Receiver", price: 150, image_path: "", description: "200 watt stereo receiver. Includes AM/FM radio adapter.")

Product.create(name: "Speakers", price: 75, image_path: "", description: "Two 200-watt stereo speakers.")
