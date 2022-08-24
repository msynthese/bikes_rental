Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bikes, only: [:new, :create, :index, :show]
end
