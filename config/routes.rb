Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root to: 'reviews#index'
  resources :reviews do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end

  resources :about
  resources :reviews, only:[:create, :new, :index, :show, :edit, :update, :destroy]
  resources :users, only: :show
end
