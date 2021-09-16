Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root to: 'reviews#index'
  resources :reviews do
    resources :comments, only: :create
  end
  resources :reviews, only:[:create, :new, :index, :show, :edit, :update, :destroy]
end
