class Location < ApplicationRecord
  has_many :bathrooms
  belongs_to :user
  # scope by_name order(:name)

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{street_number}, #{street_name}, #{city}, #{state}, #{zip_code}"
  end
end
