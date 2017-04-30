Location.destroy_all
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
  },
  {
    name: "Golden Gate Park",
    street_number: nil,
    street_name: nil,
    suite: nil,
    city: "San Francisco",
    state: "CA",
    zip_code: "94122"
  },
  {
    name: "Philz Coffee",
    street_number: "300",
    street_name: "Folsom St.",
    suite: nil,
    city: "San Francisco",
    state: "CA",
    zip_code: "94105"
  },
  {
    name: "SF Ferry Building",
    street_number: "1",
    street_name: "Ferry Building",
    suite: nil,
    city: "San Francisco",
    state: "CA",
    zip_code: "94111"
  },
  {
    name: "Mission Dolores Park",
    street_number: nil,
    street_name: nil,
    suite: nil,
    city: "San Francisco",
    state: "CA",
    zip_code: "94114"
  },
  {
    name: "Maritime Museum",
    street_number: "900",
    street_name: "Beach Street",
    suite: nil,
    city: "San Francisco",
    state: "CA",
    zip_code: "94109"
  },
  {
    name: "Trader Joe's",
    street_number: "401",
    street_name: "Bay St.",
    suite: nil,
    city: "San Francisco",
    state: "CA",
    zip_code: "94133"
  }

])
p "Location count:", Location.count





Bathroom.destroy_all
Bathroom.create([
  {
    location_description: "Ground floor",
    is_fam_friendly: true,
    is_gendered: false,
    is_accessible: true,
    rating: 4.0,
    location_id: 1
  },
  {
    location_description: "At food court level",
    is_fam_friendly: true,
    is_gendered: false,
    is_accessible: true,
    rating: 4.5,
    location_id: 1
  },
  {
    location_description: "Fifth floor",
    is_fam_friendly: false,
    is_gendered: true,
    is_accessible: true,
    rating: 4.5,
    location_id: 2
  },
  {
    location_description: "Fifth floor",
    is_fam_friendly: false,
    is_gendered: false,
    is_accessible: true,
    rating: 4.5,
    location_id: 2
  },
  {
    location_description: "Go to left most entrance and is half way down the hall",
    is_fam_friendly: true,
    is_gendered: true,
    is_accessible: true,
    rating: 3.0,
    location_id: 3
  },
  {
    location_description: "half way down the hall",
    is_fam_friendly: true,
    is_gendered: true,
    is_accessible: true,
    rating: 3.5,
    location_id: 3

  }
])

p "Bathroom count:", Bathroom.count
