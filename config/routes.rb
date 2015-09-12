Rails.application.routes.draw do
  namespace :api do
    resources :parkings
  end
  resources :payments
  resources :parkings
  resources :events
  resources :billings  
  resources :charges
 
  resources :events  do
    resources :parkings 
  end  
  
  get '/siteparking/sitepayments/:token', to: 'payments#new'  
  get '/siteparking/download/:id', to: 'parkings#download' 
  get '/scanqrcode', to: 'visitors#scan_qr_code' 
  get '/scanqrcodeparking', to: 'visitors#parkings' 
  get '/paymentreciept', to: 'payments#reciept'
  root to: 'visitors#parkings'
  # root to: 'visitors#index'
  devise_for :users
  resources :users
end
