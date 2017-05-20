Rails.application.routes.draw do
  root 'products#index'

  resources :products, only: [:new, :create, :index]
  resource :client, only: :show
  resource :retailer, only: :show

  get '/sessions/new', to: 'sessions#new'
  get '/sessions/destroy', to: 'sessions#destroy'
end
