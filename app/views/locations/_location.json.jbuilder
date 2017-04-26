json.extract! location, :id, :name, :description, :is_gendered, :created_at, :updated_at
json.url location_url(location, format: :json)
