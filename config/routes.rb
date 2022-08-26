Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :bookings, only: %i[index show]
  resources :bikes, only: %i[new create index show] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[update]
  get "my_bikes", to: "bikes#bikes_owner"
  get "my_bookings", to: "bookings#bookings_owner"
  # get '/bookings/:id/', to: "bookings#new"
  # get "bookings", to: "bookings#bookings/new/create"
end
