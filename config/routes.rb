Rails.application.routes.draw do
  resources :eruptions
  resources :uniq_volcanos
  root 'index#index'
end
