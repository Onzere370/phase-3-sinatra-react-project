puts "🌱 Seeding Chicken Lunchbox products..."

products = [
  { name: "Whole Chicken Broiler", price: 700, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSklEgYKYnoKCAYNv3xbQGA9ztc1tuy_8iacQ&usqp=CAU' },
  { name: "Chicken Drumsticks", price: 80, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKeMvYVAoT82DaC7ZMq3Sj9rei7P7rmGhQ8w&usqp=CAU' },
  { name: "Whole Chicken Kienyeji", price: 1200, image: 'https://chopsprimelenana.co.ke/wp-content/uploads/2022/02/kianyeji.jpg' },
  { name: "Gizzards", price: 130, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX1qml132HK1czIq0rRXgDz7LaKVgxGVOIFttXLRNgtBwXkn_9fcXsx5od-iD2eXjcofE&usqp=CAU' },
  { name: "Chicken Fillet", price: 450, image: 'https://images.delightedcooking.com/chicken-breasts.jpg' },
  { name: "Chicken Liver", price: 400, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2n4hdpMphO1mdu8ctUnNeqFUPhxzFh010NlEe-qX8oyqVx-3_pUxFOMySTL9lyIvgsg0&usqp=CAU' },
  { name: "Chicken Wings", price: 250, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJtrYMIyuhxKwykLOL6fXTARpICxa4ER3gGA&usqp=CAU' },
  { name: "Chicken Necks", price: 150, image: 'https://springfieldorganics.co.uk/cdn/shop/products/SP63472.jpg?v=1654694864' },
  { name: "Chicken Mince", price: 470, image: 'https://5.imimg.com/data5/XY/UF/MY-31387320/chicken-mince-28keema-29-500x500.png' },
  { name: "Chicken Thighs", price: 450, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-rl4_D2jlwyUH4yJPJWFfl8ipz_LrJpNGlVzd9KTfwJkGvibwjbDwh6oie7VZ-OWWFUE&usqp=CAU' },
  { name: "Chicken Legs", price: 100, image: 'https://previews.123rf.com/images/cloud7days/cloud7days1809/cloud7days180901042/107641278-raw-chicken-feet-isolated-on-white-background.jpg' },
  { name: "Kienyeji Eggs", price: 25, image: 'https://kakilaorganics.co.ke/wp-content/uploads/2021/05/Eggs_510x.progressive.jpg' },
  { name: "Broiler Eggs", price: 20, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJjABCM0Pr7vM9yR7y5KDAKvBd1xRsWiE0w_s5QvSHgI8yZulyOrLSKeKbr2bqp_fi-s&usqp=CAU'},
  { name: "Chicken Sausage", price: 35, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSISmNwOJVBNMBOF-u9PzWrrKSOcE6efrFBiXrWe36hZ-I51eUBYspe-tLmPMc101ElIJY&usqp=CAU' },
]

products.each do |product_data|
  Product.create(product_data)
end

puts "✅ Done seeding Chicken Lunchbox products!"

puts "🌱 Seeding Chicken Lunchbox categories..."

categories = [
  { name: 'Kienyeji' },
  { name: 'Broiler' },
  { name: 'Eggs' }
]

categories.each do |category_data|
  Category.create(category_data)
end

puts "✅ Done seeding Chicken Lunchbox categories!"


puts "🌱 Seeding Chicken Lunchbox categories and products..."

if Category.count.zero?
  kienyeji_category = Category.create(name: 'Kienyeji')
  broiler_category = Category.create(name: 'Broiler')
  eggs_category = Category.create(name: 'Eggs')
else
  kienyeji_category = Category.find_by(name: 'Kienyeji')
  broiler_category = Category.find_by(name: 'Broiler')
  eggs_category = Category.find_by(name: 'Eggs')
end

if Product.where(category: kienyeji_category).count.zero?
  Product.create(name: 'Chicken Legs', price: 100, image: 'https://previews.123rf.com/images/cloud7days/cloud7days1809/cloud7days180901042/107641278-raw-chicken-feet-isolated-on-white-background.jpg', category: kienyeji_category)
  Product.create(name: 'Chicken Necks', price: 150, image: 'https://springfieldorganics.co.uk/cdn/shop/products/SP63472.jpg?v=1654694864', category: kienyeji_category)
  Product.create(name: 'Gizzards', price: 130, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX1qml132HK1czIq0rRXgDz7LaKVgxGVOIFttXLRNgtBwXkn_9fcXsx5od-iD2eXjcofE&usqp=CAU', category: kienyeji_category)
  Product.create(name: 'Whole Chicken Kienyeji', price: 1200, image: 'https://chopsprimelenana.co.ke/wp-content/uploads/2022/02/kianyeji.jpg', category: kienyeji_category)
end

if Product.where(category: broiler_category).count.zero?
  Product.create(name: 'Whole Chicken Broiler', price: 700, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSklEgYKYnoKCAYNv3xbQGA9ztc1tuy_8iacQ&usqp=CAU', category: broiler_category)
  Product.create(name: 'Chicken Drumsticks', price: 80, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKeMvYVAoT82DaC7ZMq3Sj9rei7P7rmGhQ8w&usqp=CAU', category: broiler_category)
  Product.create(name: 'Chicken Thighs', price: 450, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-rl4_D2jlwyUH4yJPJWFfl8ipz_LrJpNGlVzd9KTfwJkGvibwjbDwh6oie7VZ-OWWFUE&usqp=CAU', category: broiler_category)
  Product.create(name: 'Chicken Liver', price: 400, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2n4hdpMphO1mdu8ctUnNeqFUPhxzFh010NlEe-qX8oyqVx-3_pUxFOMySTL9lyIvgsg0&usqp=CAU', category: broiler_category)
  Product.create(name: 'Chicken Fillet', price: 450, image: 'https://images.delightedcooking.com/chicken-breasts.jpg', category: broiler_category)
end


if Product.where(category: eggs_category).count.zero?
  Product.create(name: 'Broiler Eggs', price: 20, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJjABCM0Pr7vM9yR7y5KDAKvBd1xRsWiE0w_s5QvSHgI8yZulyOrLSKeKbr2bqp_fi-s&usqp=CAU', category: eggs_category)
  Product.create(name: 'Kienyeji Eggs', price: 25, image: 'https://kakilaorganics.co.ke/wp-content/uploads/2021/05/Eggs_510x.progressive.jpg', category: eggs_category)
end

puts "✅ Done seeding Chicken Lunchbox categories and products!"