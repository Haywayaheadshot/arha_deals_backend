# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



# user = User.new(date_of_birth: "1990-11-10", photo: "", user_name: "admin”, email: "admin@arhadeals.com", password: "112233")


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
    specs: [
        capacity: "64GB",
        body: {
          color: "Space-grey",
          scratches: "None",
          status: "Unlocked",
          batteryHealth: "100%",
          screenSize: "6.2 inches"
        }
    ],
    condition: "New",
    video_src: "https://www.youtube.com/embed/uBEaG6n0XDs"
)

Phone.create(
    name: "Iphone 6",
    amount: 2500,
    stock: 3,
    images_src: ["https://reapp.com.gh/wp-content/uploads/2018/05/217009883.apple-iphone-5s-16gb.jpg", "https://static.jazp.com/uploads_700x600/aeffcab61c2b2ae2e92e4539a210b8ae.jpg", "https://i.cbc.ca/1.1497173.1380779387!/httpImage/hi-iphone5-852.jpg"],
    specs: [
      capacity: "64GB",
      body: {
        color: "Black",
        scratches: "None",
        status: "Locked",
        batteryHealth: "80%",
        screenSize: "6.2 inches"
      }
    ],
    condition: "Used",
    video_src: "https://www.youtube.com/embed/uBEaG6n0XDs"
)

Phone.create(
    name: "Iphone 8",
    amount: 3200,
    stock: 2,
    images_src: ["https://reapp.com.gh/wp-content/uploads/2018/05/217009883.apple-iphone-5s-16gb.jpg", "https://static.jazp.com/uploads_700x600/aeffcab61c2b2ae2e92e4539a210b8ae.jpg", "https://i.cbc.ca/1.1497173.1380779387!/httpImage/hi-iphone5-852.jpg"],
    specs: [
      capacity: "128GB",
      body: {
        color: "Gold",
        scratches: "None",
        status: "Unlocked",
        batteryHealth: 100,
        screenSize: "6 inches"
      }
    ],
    condition: "New",
    video_src: "https://www.youtube.com/embed/uBEaG6n0XDs"
)

Phone.create(
    name: "Iphone 13",
    amount: 3200,
    stock: 1,
    images_src: ["https://reapp.com.gh/wp-content/uploads/2018/05/217009883.apple-iphone-5s-16gb.jpg", "https://static.jazp.com/uploads_700x600/aeffcab61c2b2ae2e92e4539a210b8ae.jpg", "https://i.cbc.ca/1.1497173.1380779387!/httpImage/hi-iphone5-852.jpg"],
    specs: [
      capacity: "256GB",
      body: {
        color: "Silver",
        scratches: "Back glass broken",
        status: "Unlocked",
        batteryHealth: 100,
        screenSize: "6 inches"
      }
    ],
    condition: "New",
    video_src: "https://www.youtube.com/embed/uBEaG6n0XDs"
)
  