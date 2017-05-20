Rails.application.routes.draw do
  root 'products#index'

  resources :products, only: [:new, :create, :index] 

  resources :sessions, only: :new
end
