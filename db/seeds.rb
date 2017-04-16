# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#find a name of Italian if that is first time, create it
italian   = Category.where(name: "Italian").first_or_create(name: "Italian")
asia      = Category.where(name: "Asian").first_or_create(name: "Asian")
greek     = Category.where(name: "Greek").first_or_create(name: "Greek")
french    = Category.where(name: "French").first_or_create(name: "French")
mexican   = Category.where(name: "Mexican").first_or_create(name: "Mexican")
indian    = Category.where(name: "Indian").first_or_create(name: "Indian")
korean    = Category.where(name: "Korean").first_or_create(name: "Korean")
japanese  = Category.where(name: "Japanese").first_or_create(name: "Japanese")
myanmar   = Category.where(name: "Myanmar").first_or_create(name: "Myanmar")
chinese   = Category.where(name: "Chinese").first_or_create(name: "Chinese")
vietnam   = Category.where(name: "Vietnam").first_or_create(name: "Vietnam")
american  = Category.where(name: "American").first_or_create(name: "American")
western   = Category.where(name: "Western").first_or_create(name: "Western")

Resturant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", address1: "One Washington Square",city:"San Jose", state: "ca", zipcode: "95192", category_id: mexican.id)
Resturant.where(name: "Chipotle").first_or_create(name: "Chipotle", description: "tacos", address1: "361 N Capitol Ave" , city:"San Jose", state: "ca",zipcode: "95133", category_id: mexican.id)
Resturant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", address1: "103 S Rampart Blvd", city:"Los Angeles", state: "ca", zipcode: "90057", category_id: mexican.id)
Resturant.where(name: "Chipotle").first_or_create(name: "Chipotle", description: "chipotle", address1: "601 W 7th St", city:"Los Angeles", state: "ca", zipcode: "90017", category_id: mexican.id)

Resturant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", address1: "2 Pennsylvania Plaza", city:"New York", state: "ny", zipcode: "10001", category_id: mexican.id)
Resturant.where(name: "Chipotle").first_or_create(name: "Chipotle", description: "tacos", address1: "304 W 34th St", city:"New York", state: "ca", zipcode: "10001", category_id: mexican.id)
Resturant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", address1: "1503 Lexington Ave", city:"New York", state: "ny", zipcode: "10029", category_id: mexican.id)
Resturant.where(name: "Chipotle").first_or_create(name: "Chipotle", description: "tacos", address1: "2 Broadway", city:"New York", state: "ny", zipcode: "10004", category_id: mexican.id)

Resturant.where(name: "Mcdonald").first_or_create(name: "Mcdonald", description: "Buger", address1: "2353 McKee Rd", city:"San Jose", state: "ca", zipcode: "95116", category_id: american.id)
Resturant.where(name: "Carl's Jr.").first_or_create(name: "Mcdonald", description: "Buger", address1: "2 N Jackson Ave", city:"San Jose", state: "ca", zipcode: "95116",category_id: american.id)
Resturant.where(name: "Mcdonald").first_or_create(name: "Mcdonald", description: "Buger", address1: "160 Broadway", city:"New York", state: "ny", zipcode: "10038",category_id: american.id)

Resturant.where(name: "Panda Express").first_or_create(name: "Panda Express", description: "CC", address1: "1277 1st Avenue",city:"New York", state: "ny",zipcode: "10021", category_id: chinese.id)
Resturant.where(name: "Panda Express").first_or_create(name: "Panda Express", description: "CC", address1: "361 N Capitol Ave", city:"San Jose", state: "ca",zipcode: "95133", category_id: chinese.id)

Resturant.where(name: "A Sushi").first_or_create(name: "A Sushi", description: "fresh", address1: "130 E Santa Clara St",city:"San Jose", state: "ca",zipcode: "95113", category_id: japanese.id)
Resturant.where(name: "A Sushi").first_or_create(name: "A Sushi", description: "fresh", address1: "119 Sullivan St",city:"New York", state: "ny",zipcode: "10012", category_id: japanese.id)

Resturant.where(name: "Pho").first_or_create(name: "Pho", description: "noodle", address1: "2874 Alum Rock Ave B" , city:"San Jose", state: "ca",zipcode: "95127", category_id: vietnam.id)
Resturant.where(name: "Pho").first_or_create(name: "Pho", description: "noodle", address1: "87 Chrystie St", city:"New York", state: "ny",zipcode: "10002", category_id: vietnam.id)