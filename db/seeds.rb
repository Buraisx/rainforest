# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create!(name: "1992 BMW M3", description: "Imola red BMW M3 from 1992.", price: 20000, url: "https://s1.cdn.autoevolution.com/images/gallery/BMWM3-E30--770_11.jpg")
Product.create!(name: "Porsche 918 Spyder", description: "Targa top Porsche Supercar", price: 1000000, url: "https://buyersguide.caranddriver.com/media/assets/submodel/4320.jpg")

Review.create!(comment: "wow this car is cool", product_id: 2)
Review.create!(product_id: 2, comment: "wow this car is okay")
Review.create!(product_id: 2, comment: "wow this car is cool")
Review.create!(product_id: 3, comment: "wow this car is okay")
Review.create!(product_id: 3, comment: "wow this car is cool")
Review.create!(product_id: 3, comment: "wow this car is okay")