Rails.application.routes.draw do

  devise_for :users

  root to: 'home#index'

  resources :souls, only: [:new, :create]
  resources :guams, only: [:new, :create]
  resources :taipeis, only: [:new, :create]
  resources :hawais, only: [:new, :create]
  resources :hongkongs, only: [:new, :create]
  resources :balis, only: [:new, :create]
  resources :bankokus, only: [:new, :create]
  resources :sebs, only: [:new, :create]
  resources :singapauls, only: [:new, :create]
  resources :pusans, only: [:new, :create]
  
end
