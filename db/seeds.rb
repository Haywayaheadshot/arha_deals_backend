# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



# @user = User.new(date_of_birth: "1990-11-10", photo: "", user_name: "admin", email: "admin@arhadeals.com", password: "112233")


# {
#     "user": {
#       "name": "test1",
#       "password": "Test@app123",
#       "photo": "",
#       "date_of_birth": "1990-11-10",
#       "user_name": "Test 1",
#       "email": "testuser1@arhadeals.com"
#     }
#   }

# Login
# Email: ummarabubakar@outlook.com
# pass: Test@pass123

Phone.create(
    name: "Iphone 5",
    amount: 2000,
    stock: 10,
    images_src: ["https://reapp.com.gh/wp-content/uploads/2018/05/217009883.apple-iphone-5s-16gb.jpg", "https://static.jazp.com/uploads_700x600/aeffcab61c2b2ae2e92e4539a210b8ae.jpg", "https://i.cbc.ca/1.1497173.1380779387!/httpImage/hi-iphone5-852.jpg"],
    specs: {
        capacity: "64GB",
        body: {
          color: "Space-grey",
          scratches: "None",
          status: "Unlocked",
          batteryHealth: "100%",
          screenSize: "6.2 inches"
        }
    },
    condition: "New",
    video_src: "https://www.youtube.com/embed/uBEaG6n0XDs"
)

Phone.create(
    name: "Iphone 6",
    amount: 2500,
    stock: 3,
    images_src: ["https://reapp.com.gh/wp-content/uploads/2018/05/217009883.apple-iphone-5s-16gb.jpg", "https://static.jazp.com/uploads_700x600/aeffcab61c2b2ae2e92e4539a210b8ae.jpg", "https://i.cbc.ca/1.1497173.1380779387!/httpImage/hi-iphone5-852.jpg"],
    specs: {
      capacity: "64GB",
      body: {
        color: "Black",
        scratches: "None",
        status: "Locked",
        batteryHealth: "80%",
        screenSize: "6.2 inches"
      }
    },
    condition: "Used",
    video_src: "https://www.youtube.com/embed/uBEaG6n0XDs"
)

Phone.create(
    name: "Iphone 8",
    amount: 3200,
    stock: 2,
    images_src: ["https://reapp.com.gh/wp-content/uploads/2018/05/217009883.apple-iphone-5s-16gb.jpg", "https://static.jazp.com/uploads_700x600/aeffcab61c2b2ae2e92e4539a210b8ae.jpg", "https://i.cbc.ca/1.1497173.1380779387!/httpImage/hi-iphone5-852.jpg"],
    specs: {
      capacity: "128GB",
      body: {
        color: "Gold",
        scratches: "None",
        status: "Unlocked",
        batteryHealth: 100,
        screenSize: "6 inches"
      }
    },
    condition: "New",
    video_src: "https://www.youtube.com/embed/uBEaG6n0XDs"
)

Phone.create(
    name: "Iphone 13",
    amount: 3200,
    stock: 1,
    images_src: ["https://reapp.com.gh/wp-content/uploads/2018/05/217009883.apple-iphone-5s-16gb.jpg", "https://static.jazp.com/uploads_700x600/aeffcab61c2b2ae2e92e4539a210b8ae.jpg", "https://i.cbc.ca/1.1497173.1380779387!/httpImage/hi-iphone5-852.jpg"],
    specs: {
      capacity: "256GB",
      body: {
        color: "Silver",
        scratches: "Back glass broken",
        status: "Unlocked",
        batteryHealth: 100,
        screenSize: "6 inches"
      }
    },
    condition: "New",
    video_src: "https://www.youtube.com/embed/uBEaG6n0XDs"
)

BabyProduct.create(
  name: "Foldable Baby Bathtub",
  amount: 750,
  stock: 5,
  images_src: ["https://d3e54emdgoy1fq.cloudfront.net/uploads/product/image/440901/medium_660_660_d86f0-LIVINGbasics-LB-BB-8038-Baby-Supplies-Foldable-Baby-Bathtub.jpg", "https://d3e54emdgoy1fq.cloudfront.net/uploads/image_file/image/320229/medium_660_660_7e77b-LIVINGbasics-LB-BB-8038-Baby-Supplies-Foldable-Baby-Bathtub.jpg", "https://d3e54emdgoy1fq.cloudfront.net/uploads/image_file/image/320246/medium_660_660_6e4e5-LIVINGbasics-LB-BB-8038-Baby-Supplies-Foldable-Baby-Bathtub.jpg"],
  specs: [
      ["material", "BPA free PVC"],
      ["Color", "Blue"],
      ["Drain Hole", "Yes"],
      ["Unfold Size", "87 X 49 X 21 CM / 34.25 X 19.29 X 8.27 inch"],
      ["Fold Size", "87 X 49 X 9.5 CM / 34.25 X 19.29 X 3.74 inch"],
  ],
  condition: "New. With box intact",
  video_src: "https://www.youtube.com/embed/SZeAXKRsGr0"
)

BabyProduct.create(
  name: "Portable Baby Playard And Changing Table, Flodable Suitable For Home,Travel",
  amount: 1500,
  stock: 3,
  images_src: ["https://d3e54emdgoy1fq.cloudfront.net/uploads/image_file/image/326636/medium_660_660_9c58d-LIVINGbasics-LB-BPC-01-Baby-Supplies-Portable-Baby-Play-Yard-Grey-LIVINGbasics-.jpg", "https://d3e54emdgoy1fq.cloudfront.net/uploads/image_file/image/326635/medium_660_660_d37a8-LIVINGbasics-LB-BPC-01-Baby-Supplies-Portable-Baby-Play-Yard-Grey-LIVINGbasics-.jpg", "https://d3e54emdgoy1fq.cloudfront.net/uploads/product/image/413617/medium_660_660_10658-LIVINGbasics-LB-BPC-01-Baby-Supplies-Portable-Baby-Play-Yard-Grey-LIVINGbasics-.jpg"],
  specs: [
    ["Color", "Grey"],
    ["Size", "39 3/8''x 27 9/16''x 27 9/16'' (100 x70 x70cm)"],
    ["Material", "Plastic, steel pipe, cloth"],
    ["G.W", "12kg"],
    ["N.W", "10.5kg"],
  ],
  productHightlights: [
    "Easy assemble, sets up in less than 1 minute",
    "Removable changing table is designed to allow mom to make an easy change of diapers.",
    "Removing all attachments, it provides a wide space for the baby to practice standing and playing.",
    "Lightweight, but strong, stable, and sturdy structure",
    "Entertaining toy arch with three attractive toys"
  ],
  condition: "New. Without box",
  features: [
    "Sets up in 1 minute.",
    "Two wheels for easy mobility.",
    "Lightweight, compact fold.",
    "Easy to store and transport with carry bag."
  ],
  video_src: "https://www.youtube.com/embed/vNiNsDb-xVQ"
)


BabyProduct.create(
  name: "Folding Baby Mat Thick Foam Reversible Waterproof Portable Kids Playmat",
  amount: 200,
  stock: 13,
  images_src: ["https://d3e54emdgoy1fq.cloudfront.net/uploads/image_file/image/291022/medium_660_660_e9b0a-LIVINGbasics-LB-BB-05-Baby-Supplies-Folding-Baby-Mat-Thick-Foam-Crawling-Playmat-Reversible-Waterproof-Portable-Kids-Playmat.jpg", "https://d3e54emdgoy1fq.cloudfront.net/uploads/image_file/image/291015/medium_660_660_6c5c6-LIVINGbasics-LB-BB-05-Baby-Supplies-Folding-Baby-Mat-Thick-Foam-Crawling-Playmat-Reversible-Waterproof-Portable-Kids-Playmat.jpg", "https://d3e54emdgoy1fq.cloudfront.net/uploads/product/image/424942/medium_660_660_f23f5-LIVINGbasics-LB-BB-05-Baby-Supplies-Folding-Baby-Mat-Thick-Foam-Crawling-Playmat-Reversible-Waterproof-Portable-Kids-Playmat.jpg"],
  productHightlights: [
    "OVERSIZED & SOFT: Thick foam cushion plays an important role to protect baby from hurt while learning to stand up",
    "FOLDABLE & REVERSIBLE: Whole durable single piece is foldable and easy to pack to save the room with the playing mat case.",
    "USE ON 2 SIDES OF THE MAT: Interesting pattern on both sides",
    "SAFE AND NON TOXIC MATERIAL: 100% BPA-FREE XPE material and had passed ASTM certification. Safe, non toxic, tasteless, non polluting, waterproof and soft.","WATERPROOF & EASY TO CLEAN: Adult supervision is strongly advised at all times while products are being used. Babies and children should never be left alone with the product."
  ],
  specs: [["Overall Size", 'include 18 pcs, Each Tile = 11.8"x11.8"x0.4" (30x30x1cm). Assembled Mat Size = 1.62 Sqm'],
          ["Weight","1.2kgs/2.6lbs"],
          ["Material", "100% BPA-FREE XPE material"]],
  condition: "New. Without box",
  features: [],
  video_src: ""
)

BabyProduct.create(
  name: "Portable Folding Lightweight Baby Stroller, Foldable Compact Stroller, Grey",
  amount: 2500,
  stock: 1,
  images_src: ["https://d3e54emdgoy1fq.cloudfront.net/uploads/image_file/image/319264/medium_660_660_13ff2-LIVINGbasics-LB-BPC-C628-Baby-Supplies-Portable-Folding-Lightweight-Baby-Stroller-Foldable-Compact-Stroller-Grey-LIVINGbasics-.jpg","https://d3e54emdgoy1fq.cloudfront.net/uploads/image_file/image/319265/medium_660_660_5defa-LIVINGbasics-LB-BPC-C628-Baby-Supplies-Portable-Folding-Lightweight-Baby-Stroller-Foldable-Compact-Stroller-Grey-LIVINGbasics-.jpg","https://d3e54emdgoy1fq.cloudfront.net/uploads/product/image/438226/medium_660_660_394d3-LIVINGbasics-LB-BPC-C628-Baby-Supplies-Portable-Folding-Lightweight-Baby-Stroller-Foldable-Compact-Stroller-Grey-LIVINGbasics-.jpg"],
  productHightlights: [
    "Aluminum alloy frame, travel-friendly lightweight design (only 13.8 lbs), perfect for travelling and day trips.",
    "Assembled dimensions 17.6 x 29.9 x 41.7 inches.",
    "Three-tier, extended canopy for maximum UV protection; A peek-a-boo window - easily keep a watchful eye on your baby.",
    "Convenient one-hand and self-standing fold, perfect for car travel and vacations.",
    `Folded Dimensions: 18" W x 12" d x 34" h. All-terrain wheels and front suspension for a smooth ride.`,
    "The easy, compact fold - simple to store this lightweight umbrella stroller. Hassle-free canopy with flip out sun visor - perfect for sunny days.",
    "Removable Big front bumper bar; Backrest adjustable in random position.",
    "Front wheels with fixer and quick release function.",
    "Rear wheel with linked brake.",
    "With plenty of storage in this stroller - won’t have to leave anything at home.",
    "Includes a storage basket, rear storage pocket and one cup holder"
  ],
  specs: [
    ["LIGHTWEIGHT","Aluminum alloy frame, travel friendly lightweight design (only 13.8 lbs), perfect for traveling and day trips. The assembled dimensions are 17.6 x 29.9 x 41.7 inches"],
    ["EXTENDED CANOPY", "Three-tier, extended canopy for maximum UV protection. A peek-a-boo window so you can easily keep a watchful eye on your baby."],
    ["EASY ONE-HAND FOLD",`Convenient one-hand and self-standing fold, perfect for car travel and vacations. Folded Dimensions: 18" W x 12" d x 34" h. All-terrain wheels and front suspension for a smooth ride.`],
    ["COMPACT FOLD", "The easy, compact fold makes it simple to store this lightweight umbrella stroller and bring it with you on the go! Plus, it has a hassle-free canopy with flip out sun visor that is perfect for sunny days. Multifunctional-- Removable Big front bumper bar. Backrest adjustable in random position. Front wheels with fixer and quick release function. Rear wheel with linked brake."],
    ["EXTRA STORAGE", "With plenty of storage in this stroller, you won’t have to leave anything at home. It includes a storage basket, rear storage pocket and one cup holder."],
  ],
  condition: "Used. Without box",
  features: [],
  video_src: ""
)
# @cart = Cart.create(user_id: 1)
# CartItem.create( phone_id: nil, phone_quantity: nil, cart_id: 1 , baby_product_id: 1, baby_products_quantity: 2) 