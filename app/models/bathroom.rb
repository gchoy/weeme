class Bathroom < ApplicationRecord
  belongs_to :location, optional: true
end
