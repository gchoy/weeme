require 'rails_helper'
# t.string   "email",                  default: "", null: false
# t.string   "encrypted_password",

RSpec.describe User, type: :model do
  # Association test
  # ensure User model has a 1:m relationship with the Todo model
  it { should have_many(:locations) }
  # Validation tests
  # ensure name, email and password_digest are present before save
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:encrypted_password) }
end
