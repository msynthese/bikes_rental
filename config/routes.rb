Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bikes, only: %i[new create index show]
end
