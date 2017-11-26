Rails.application.routes.draw do
  devise_for :users
  resources :reviews
  resources :products do
    resources :charges
  end
  
  root 'products#index'

  get 'my-account', to: 'products#seller'

end
