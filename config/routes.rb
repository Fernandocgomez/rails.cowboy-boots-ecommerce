Rails.application.routes.draw do
  resources :order_products
  resources :collections
  resources :product_collections
  resources :reviews
  resources :products
  resources :cart_products
  resources :orders
  resources :carts
  resources :cookies
  resources :customers
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
