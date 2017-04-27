FactoryGirl.define do
  factory :location do
    name { Faker::Name.name }
    street_number { Faker::Number.between(1,300) }
    street_name { Faker::Address.street_name }
    suite{ Faker::Number.between(1,10) }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip_code { Faker::Address.zip_code }
    user_id {Faker::Number.between(1,50) }

  end
end


# t.string   "name"
# t.string   "street_number"
# t.string   "street_name"
# t.string   "suite"
# t.string   "city"
# t.string   "state"
# t.string   "zip_code"
# t.datetime "created_at",    null: false
# t.datetime "updated_at",    null: false
# t.integer  "user_id"
