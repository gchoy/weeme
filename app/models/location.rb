class Location < ApplicationRecord
  has_many :bathrooms
  belongs_to :user
  # scope by_name order(:name)
end
