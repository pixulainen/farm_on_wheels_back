Rails.application.routes.draw do
  resources :categories
  resources :order_products
  resources :products
  resources :orders
  resources :addresses
  resources :sellers
  resources :buyers

  post "/add_seller_to_favourite", to: "buyers#add_seller_to_favourite"
  post "/remove_seller_from_favourite", to: "buyers#remove_seller_from_favourite"

  
  post "/buyer-sign-in", to: "buyers#sign_in"
  get "/buyer-validate", to: "buyers#validate"
  post '/products/search', to: "products#search"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
