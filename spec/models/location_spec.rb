require 'rails_helper'

RSpec.describe Location, type: :model do
  #Association test
  # ensure Location model has a 1:m relationship with the Bathroom model

  it { should have_many(:bathrooms).dependent(:destroy) }
  #Validation tests
  # ensure colums are present before saving
  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:street_number) }
  it { should validate_presence_of(:street_name) }
  it { should validate_presence_of(:suit) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:zip_code) }

end
