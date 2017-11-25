Rails.application.routes.draw do
  devise_for :users
  resources :reviews
  resources :products
  resources :charges
  
  root 'products#index'

  get 'my-account', to: 'products#seller'

end
