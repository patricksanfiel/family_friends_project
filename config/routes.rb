Rails.application.routes.draw do
  devise_for :users
  resources :reviews
  resources :products
  
  root 'products#index'

end
