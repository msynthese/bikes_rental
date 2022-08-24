Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :bikes, only: %i[new create index show]
  resources :bookings, only: %i[new show]
  get "my_bikes", to: "bikes#bikes_owner"
end
