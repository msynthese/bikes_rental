Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bikes, only: [:new, :create, :index, :show]
  resources :bookings, only: [:new, :show]
  get "my_bikes", to: "bikes#bikes_owner"
end
