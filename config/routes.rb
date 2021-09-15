Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root to: 'reviews#index'
  resources :reviews, only:[:create, :new, :index]
end
