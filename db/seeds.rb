# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cdn_url = "https://d1l9z57rsk8jbg.cloudfront.net/"

admin = Admin.create({
    email: "fernandocgomez@live.com",
    password: "admin32%"
})

customer = Customer.create({
    first_name: "Fernando",
    last_name: "Gomez",
    email: "fer@live.com",
    password: "fernando123",
    user_type: "customer",
    creation_datetime: DateTime.now()
})

best_seller_collection = Collection.create({
    name: "best sellers", 
    admin_id: admin.id
})

all_products_collection = Collection.create({
    name: "all products",
    admin_id: admin.id
})

sale_collection = Collection.create({
    name: "sale",
    admin_id: admin.id
})

product_one = Product.create({
    name: "Heritage Roughstock Western Boot",
    image: cdn_url + "store/products/heritage_roughstock_western_boot.jpg",
    price: 189.95,
    sale_price: 120.95,
    size: [6.0, 6.5, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0, 10.5, 11.0, 11.5],
    admin_id: admin.id
})

product_two = Product.create({
    name: "Heritage Roughstock Western Boot",
    image: cdn_url + "store/products/hybrid_all_weather_waterproof_steel _toe _work _boot.jpg",
    price: 289.95,
    size: [6.0, 6.5, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0, 10.5, 11.0, 11.5],
    admin_id: admin.id
})

product_three = Product.create({
    name: "Sport Wide Square Toe Western Boot",
    image: cdn_url + "store/products/sport_wide_square_toe_western_boot.jpg",
    price: 179.95,
    size: [6.0, 6.5, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0, 10.5, 11.0, 11.5],
    admin_id: admin.id
})

product_four = Product.create({
    name: "Quickdraw Western Boot",
    image: cdn_url + "store/products/quickdraw_western_boot.jpg",
    price: 209.95,
    size: [6.0, 6.5, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0, 10.5, 11.0, 11.5],
    admin_id: admin.id
})

product_five = Product.create({
    name: "Tombstone Western Boot",
    image: cdn_url + "store/products/tombstone_western_boot.jpg",
    price: 219.95,
    size: [6.0, 6.5, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0, 10.5, 11.0, 11.5],
    admin_id: admin.id
})

product_six = Product.create({
    name: "Legend Phoenix Western Boot",
    image: cdn_url + "store/products/legend_phoenix_western_boot.jpg",
    price: 219.95,
    size: [6.0, 6.5, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0, 10.5, 11.0, 11.5],
    admin_id: admin.id
})

product_seven = Product.create({
    name: "Circuit Patriot Western Boot",
    image: cdn_url + "store/products/circuit_patriot_western_boot.jpg",
    price: 199.95,
    size: [6.0, 6.5, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0, 10.5, 11.0, 11.5],
    admin_id: admin.id
})

product_eight = Product.create({
    name: "Arena Rebound Western Boot",
    image: cdn_url + "store/products/arena_rebound_western_boot.jpg",
    price: 209.95,
    size: [6.0, 6.5, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0, 10.5, 11.0, 11.5],
    admin_id: admin.id
})

ProductCollection.create({
    collection_id: all_products_collection.id,
    product_id: product_one.id
})

ProductCollection.create({
    collection_id: all_products_collection.id,
    product_id: product_two.id
})

ProductCollection.create({
    collection_id: all_products_collection.id,
    product_id: product_three.id
})

ProductCollection.create({
    collection_id: all_products_collection.id,
    product_id: product_four.id
})

ProductCollection.create({
    collection_id: all_products_collection.id,
    product_id: product_five.id
})

ProductCollection.create({
    collection_id: all_products_collection.id,
    product_id: product_six.id
})

ProductCollection.create({
    collection_id: all_products_collection.id,
    product_id: product_seven.id
})

ProductCollection.create({
    collection_id: all_products_collection.id,
    product_id: product_eight.id
})

ProductCollection.create({
    collection_id: best_seller_collection.id,
    product_id: product_one.id
})

ProductCollection.create({
    collection_id: best_seller_collection.id,
    product_id: product_two.id
})

ProductCollection.create({
    collection_id: best_seller_collection.id,
    product_id: product_three.id
})

ProductCollection.create({
    collection_id: best_seller_collection.id,
    product_id: product_four.id
})

ProductCollection.create({
    collection_id: sale_collection.id,
    product_id: product_five.id
})

ProductCollection.create({
    collection_id: sale_collection.id,
    product_id: product_six.id
})

ProductCollection.create({
    collection_id: sale_collection.id,
    product_id: product_seven.id
})

ProductCollection.create({
    collection_id: sale_collection.id,
    product_id: product_eight.id
})