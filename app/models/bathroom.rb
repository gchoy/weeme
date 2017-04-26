class Bathroom < ApplicationRecord
  belongs_to :location, optional: false
end
