Rails.application.routes.draw do
  root 'products#index'

  resources :products, only: [:new, :create, :index] 

  get '/sessions/new', to: 'sessions#new'
  get '/sessions/destroy', to: 'sessions#destroy'
end
