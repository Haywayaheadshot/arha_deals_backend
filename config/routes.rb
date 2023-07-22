Rails.application.routes.draw do
  resources :reels
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
    resources :reels, only: [:index]

    # API endpoint for adding items to the cart
    post "/addtocart", to: "carts#add"

    # API endpoint for removing phones to the cart
    delete "/deletephonefromcart", to: "carts#delete_phone"

    # API endpoint for removing baby products to the cart
    delete "/deletebabyproductfromcart", to: "carts#delete_baby_product"
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
