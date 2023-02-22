Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "restaurants", to: "restaurants#index"
  get "restaurant/:id", to: "restaurants#show", as: "restaurant"
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  post "restaurants/:id/reviews", to: "reviews#create", as: "reviews"
end
