class Location < ApplicationRecord
  has_many :bathrooms
  # scope by_name order(:name)
end
