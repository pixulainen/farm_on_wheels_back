Rails.application.routes.draw do
  resources :categories
  resources :order_products
  resources :products
  resources :orders
  resources :addresses
  resources :sellers
  resources :buyers
  post "/buyer-sign-in", to: "buyers#sign_in"
  get "/buyer-validate", to: "buyers#validate"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
