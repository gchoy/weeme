require 'rails_helper'

RSpec.describe Bathroom, type: :model do
  it { should belong_to(:location) }

  it { should validate_presence_of(:location_description) }
  it { should validate_presence_of(:is_fam_friendly) }
  it { should validate_presence_of(:is_gendered) }
  it { should validate_presence_of(:is_accessible) }
  it { should validate_presence_of(:rating) }
  it { should validate_presence_of(:location_id) }

end
