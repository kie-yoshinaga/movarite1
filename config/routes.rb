Rails.application.routes.draw do
  devise_for :users
  root to: 'reviews#index'
  resources :reviews, only: :index
end
