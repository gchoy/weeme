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


# t.string   "location_description"
# t.boolean  "is_fam_friendly"
# t.boolean  "is_gendered"
# t.boolean  "is_accessible"
# t.float    "rating"
# t.datetime "created_at",           null: false
# t.datetime "updated_at",           null: false
# t.integer  "location_id"
