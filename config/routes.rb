Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :phones

  namespace :api do
    resources :users
  end

  # Defines the root path route ("/")
  devise_scope :user do
    root "devise/sessions#new"

    # API endpoint for sign up
    post "/api/signup", to: "api/users#create"
  end
end
