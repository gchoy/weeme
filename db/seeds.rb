# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all
Bathroom.destroy_all
p "Loading Locations"
Location.create([
  {
    name: "Westfield Mall",
    street_number: "865",
    street_name: "Market Street",
    suite: nil,
    city: "San Francisco",
    state: "CA",
    zip_code: "94103"
  },
  {
    name: "General Assembly",
    street_number: "225",
    street_name: "Bush Street",
    suite: "floor 5",
    city: "San Francisco",
    state: "CA",
    zip_code: "94104"
  },
  {
    name: "SF Ferry Building",
    street_number: "1",
    street_name: "Ferry Building",
    suite: nil,
    city: "San Francisco",
    state: "CA",
    zip_code: "94111"
  }

])
p "loading bathrooms"
Bathroom.create([
  {
    location_description: "Ground floor",
    is_fam_friendly: true,
    is_gendered: false,
    is_accessible: true,
    rating: 4.00,
  },
  {
    location_description: "At food court level",
    is_fam_friendly: true,
    is_gendered: false,
    is_accessible: true,
    rating: 4.5,
  },
  {
    location_description: "Fifth floor",
    is_fam_friendly: false,
    is_gendered: true,
    is_accessible: true,
    rating: 4.5,
  },
  {
    location_description: "Fifth floor",
    is_fam_friendly: false,
    is_gendered: false,
    is_accessible: true,
    rating: 4.5,
  },
  {
    location_description: "Go to left most entrance and is half way down the hall",
    is_fam_friendly: true,
    is_gendered: true,
    is_accessible: true,
    rating: 3.0,
  },
  {
    location_description: "half way down the hall",
    is_fam_friendly: true,
    is_gendered: true,
    is_accessible: true,
    rating: 3.5,
  }

])
p "Bathroom", Bathroom.count
