# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Item.create_deck("Bannerot \'93 TIL", "Girl", 5500, "Simon Bannerot's Girl", "https://cdn.shopify.com/s/files/1/0208/0114/products/93_til_bannerot_1024x1024.jpg?v=1559856915", 32, 8, "maple", "drop through")
Item.create_deck("Enjoi Whitey Panda Complete", "enjoi", "6900", "It has a panda on it", "https://img.skatewarehouse.com/watermark/rs.php?path=EIWP7CMP-1.jpg&nw=435", 1, 1, nil, nil)
Item.create_deck("Loaded Dervish Sama Flex 1 Deck", "Loaded", "21500", "It's a longboard, I think", "https://img.skatewarehouse.com/watermark/rs.php?path=LODSF1DK-3.jpg&nw=435", 1, 1, nil, nil)
Item.create_bearings("Bones Reds", "Bones", 749, "Bones Reds Bearings", "https://images-na.ssl-images-amazon.com/images/I/71SV85QR0RL._AC_SL1500_.jpg", true, true)
Item.create_deck("Overland", "Loaded Boards", 19500, "EVERYTHING IN MODERATION, INCLUDING MODERATION.", "https://cdn.shopify.com/s/files/1/0092/1085/5524/products/Overland-Complete-purp-highres_1024x.jpg?v=1551825661", 37, 9, "bamboo", "drop down")
Item.create_wheels("OZones", "Cloud Ride", 5350, "Cloud Ride Ozone wheels were created to be the ultimate centerset freeride wheel.  These babies were born to slide. The 37mm contact patch & 6mm rounded lip translates to tons of slip, making them the ideal wheel for freeriding fun.", "https://cloudridewheels.com/sites/default/files/styles/preview_jpg/public/product-images/ozone-86a_0.jpg?itok=adX3mAzn", "purple", 86, 70, true)
Item.create_trucks("SURPREME Independents", "Independent", 400000, "The best trucks in world", "https://stockx.imgix.net/products/streetwear/Supreme-Independent-Truck-Silver-1.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1538080256&w=1000", "silver", 150, true, 40)
Item.create_wheels("Orangatang Skiff", "Oranguant", 4600, "Kinda rolly", "https://img.skatewarehouse.com/watermark/rs.php?path=OTSKFWH-PU-1.jpg", "purple", 86, 70, true)
Item.create_trucks("Caliber II", "RKP", 2400, "These are definitely wheels", "https://img.skatewarehouse.com/watermark/rs.php?path=CB4SSTR-BK-BK-1.jpg", "silver", 1, nil, 1)
Item.create_bearings("Bronson Speed Co. G2 Bearings", "Bronson", 749, "Bronson Speed Co. G2 Bearings", "https://img.skatewarehouse.com/watermark/rs.php?path=BSG2BR-3.jpg&nw=435", true, true)
Item.create_bearings("8mm Performance LITE", "Seismic", 749, "Seismic Tekton 8mm Performance LITE Skateboard Bearings", "https://img.skatewarehouse.com/cache/410/SMTK8LDK-1.jpg", true, true)
Item.create_trucks("Krux x Odd Future Donut Truck", "Krux", 6900, "OFWGKTA", "https://img.skatewarehouse.com/watermark/rs.php?path=KXOFDTR-YE-PK-2.jpg&nw=435", "silver", 150, true, 40)
Item.create_wheels("DGK Street Formula Wheels", "Dirty Ghetto Kids", 2400, "Round", "https://img.skatewarehouse.com/watermark/rs.php?path=DKSFWH-WH2-1.jpg&nw=435", "yes", 86, 70, true)
Item.create_grip_tape("RIPNDIP Lord Nermal", "RIPNDIP", 1395, "Let Nermal do the talking with the RIPNDIP Lord Nermal Grip Tape.", "https://cdn.ccs.com/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/R/N/RND2180-1.1521680402.jpg", "pink", 33, 9)
Item.create_grip_tape("Spitfire Inferno II Griptape", "Spitfire", 1800, "grippy stuff", "https://img.skatewarehouse.com/watermark/rs.php?path=SFI2GT-1.jpg", "pink", 33, 9)
Item.create_grip_tape("Sprayed Griptape on Mob", "sprayed", 1200, "hurts, owie owie", "https://img.skatewarehouse.com/watermark/rs.php?path=MUPRGT-1.jpg&nw=435", "pink", 33, 9)
Item.create_grip_tape("Temmie Flakes", "Temmie2College", 1000, "Hoi! I\'m Temmie! and this is my snacks... Temmie!", "https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2Forig02.deviantart.net%2F983b%2Ff%2F2016%2F032%2Fc%2F9%2Ftemmie_flakes_by_tentaclecuddles-d9q5czf.jpg&f=1&nofb=1", "black", 33, 9)
