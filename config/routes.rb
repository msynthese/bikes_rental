Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  root to: "booking#index"

  get "/bookings", to: "bookings#index"
  get "/bookings/:id", to: "bookings#show"

  resources :bookings
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "pages#home"
end
