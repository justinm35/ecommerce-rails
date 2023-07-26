Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'main#index'
  get 'main', to: 'main#index'

  get 'shop', to: 'shop#index'
  post 'shop', to: 'shop#update'

  post 'customer', to: 'customer#create'

  get 'about', to: 'about#index'

  # post 'cart_items', to: 'cart_items#create'
  resources :cart_items, only: [:create, :destroy, :update]

  resources :cart, only: [:index, :show, :destroy, :update]
end
