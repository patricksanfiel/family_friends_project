Rails.application.routes.draw do
  devise_for :users
  resources :reviews
  resources :products do
    resources :charges
  end

  get 'my-account', to: 'products#seller'
  root 'pages#home'

  get 'test', to: 'pages#test'

end
