Rails.application.routes.draw do
  resources :parkings
  resources :events
  resources :billings
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
