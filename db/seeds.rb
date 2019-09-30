# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Item.create_deck("Bannerot \'93 TIL", "Girl", 5500, "Simon Bannerot's Girl deck", "https://cdn.shopify.com/s/files/1/0208/0114/products/93_til_bannerot_1024x1024.jpg?v=1559856915", 32, 8, "maple", "drop through")
Item.create_bearings("Bones Reds", "Bones", 749, "Bones Reds bearings", "https://images-na.ssl-images-amazon.com/images/I/71SV85QR0RL._AC_SL1500_.jpg", true, true)
Item.create_deck("Overland", "Loaded Boards", 19500, "EVERYTHING IN MODERATION, INCLUDING MODERATION.", "https://cdn.shopify.com/s/files/1/0092/1085/5524/products/Overland-Complete-purp-highres_1024x.jpg?v=1551825661", 37, 9, "bamboo", "drop down")
Item.create_wheels("OZones", "Cloud Ride", 5350, "Cloud Ride Ozone wheels were created to be the ultimate centerset freeride wheel.  These babies were born to slide. The 37mm contact patch & 6mm rounded lip translates to tons of slip, making them the ideal wheel for freeriding fun.", "https://cloudridewheels.com/sites/default/files/styles/preview_jpg/public/product-images/ozone-86a_0.jpg?itok=adX3mAzn", "purple", 86, 70, true)
Item.create_trucks("SURPREME Independents", "independent", 400000, "The best trucks in world", "https://stockx.imgix.net/products/streetwear/Supreme-Independent-Truck-Silver-1.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1538080256&w=1000", "silver", 150, true, 40)
Item.create_grip_tape("RIPNDIP Lord Nermal - Pink", "ripndip", 1395, "Let Nermal do the talking with the RIPNDIP Lord Nermal Grip Tape.", "https://cdn.ccs.com/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/R/N/RND2180-1.1521680402.jpg", "pink", 33, 9)
