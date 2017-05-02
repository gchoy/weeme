Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get "/", to: "locations#index"
  get "/about", to: "mix#about"
  get "/profile", to: "mix#profile"

  get "/search", to: "locations#search"

  # Locations routes, full CRUD
  get "/locations", to: "locations#index", as: "locations"
  get "/locations/new", to: "locations#new", as: "new_location"
  post "/locations", to: "locations#create", as: "create_location"
  get "/locations/:id", to: "locations#show", as: "location"
  get "/locations/:id/edit", to: "locations#edit", as: "edit_location"
  patch "/locations/:id", to: "locations#update"
  delete "/locations/:id", to: "locations#destroy"

  # IN PROGRESS
  get "/locations/:id/bathrooms", to: "locations#show"  #redirects to /locations/:id
  get "/locations/:id/bathrooms/:id", to: "bathrooms#show", as: "bathroom"
  get "/locations/:id/bathrooms/:id/edit", to: "bathrooms#edit", as: "edit_bathroom"
  patch "/locations/:id/bathrooms/:id", to: "bathrooms#update"
  delete "/locations/:id/bathrooms/:id", to: "bathrooms#destroy"

  # Create a bathroom from burger, from anywhere in app
  get "/bathrooms", to: "bathrooms#index", as: "bathrooms"
  get "/bathrooms/new", to: "bathrooms#new", as: "new_bathroom"
  post "/bathrooms", to: "bathrooms#create", as: "create_bathroom"

end
