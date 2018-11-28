Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/access_denied', to: 'access_denied#index'
  resources :users
  resources :eruptions
  resources :uniq_volcanos
  root 'index#index'
end
