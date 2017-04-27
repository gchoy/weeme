FactoryGirl.define do
  factory :bathroom do
    location_description { Faker::Lorem.sentence }
    is_fam_friendly { Faker::Boolean.boolean }
    is_gendered { Faker::Boolean.boolean}
    is_accessible { Faker::Boolean.boolean }
    rating { Faker::Number.between(1, 5) }
    location_id { Faker::Number.between(1,50) }

  end
end
