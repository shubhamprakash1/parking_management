Rails.application.routes.draw do
  resources :payments
  resources :parkings
  resources :events
  resources :billings  
 
  resources :events  do
    resources :parkings 
  end  
  
  get '/siteparking/sitepayments/:token', to: 'payments#new'  
  get '/siteparking/download/:id', to: 'parkings#download' 
  get '/scanqrcode', to: 'visitors#scan_qr_code'  
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
