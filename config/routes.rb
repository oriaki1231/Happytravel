Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :souls, only: [:new, :create]
  
end
