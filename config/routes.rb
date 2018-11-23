Rails.application.routes.draw do
  resources :uniq_volcanos
  root 'index#index'
end
