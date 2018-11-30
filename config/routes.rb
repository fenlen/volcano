Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'dashboard/index'
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/access_denied', to: 'access_denied#index'
  resources :users
  resources :eruptions
  resources :uniq_volcanos
  root 'index#index'
end
