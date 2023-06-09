Rails.application.routes.draw do
  resources :baby_products
  resources :carts
  resources :cart_items
  devise_for :users
  resources :users
  resources :phones

  namespace :api do
    resources :users
    resources :phones, only: [:index]
    resources :carts, only: [:index]
    resources :baby_products, only: [:index]

    # API endpoint for adding items to the cart
    post "/addtocart", to: "carts#add"

    # API endpoint for removing items to the cart
    delete "/deletefromcart", to: "carts#delete"
  end

  # Defines the root path route ("/")
  devise_scope :user do
    root "devise/sessions#new"

    # API endpoint for sign up
    post "/api/signup", to: "api/users#create"

    # API endpoint for log in
    post "/api/login", to: "api/users#check"
  end
end
