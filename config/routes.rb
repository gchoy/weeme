Rails.application.routes.draw do
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm

  # get "/users", to: "users#index", as: "users"
  # get "/users/new", to: "users#new", as: "new_user"
  # post "/users", to: "users#create", as: "create_user"
  # get "/users/:id", to: "users#show", as: "user"
  # get "/users/:id/edit", to: "users#edit", as: "edit_user"
  # patch "/users/:id", to: "users#update"
  # delete "/users/:id", to: "users#destroy"

  get "/locations", to: "locations#index", as: "locations"
  get "/locations/new", to: "locations#new", as: "new_location"
  post "/locations", to: "locations#create", as: "create_location"
  get "/locations/:id", to: "locations#show", as: "location"
  get "/locations/:id/edit", to: "locations#edit", as: "edit_location"
  patch "/locations/:id", to: "locations#update"
  delete "/locations/:id", to: "locations#destroy"

  get "/bathrooms", to: "bathrooms#index", as: "bathrooms"
  get "/bathrooms/new", to: "bathrooms#new", as: "new_bathroom"
  post "/bathrooms", to: "bathrooms#create", as: "create_bathroom"
  get "/locations/:id/bathrooms/:id", to: "bathrooms#show", as: "location_bathroom"
  get "/locations/:id/bathrooms/:id/edit", to: "bathrooms#edit", as: "edit_bathroom"
  patch "/locations/:id/bathrooms/:id", to: "bathrooms#update"
  delete "/locations/:id/bathrooms/:id", to: "bathrooms#destroy"
end
