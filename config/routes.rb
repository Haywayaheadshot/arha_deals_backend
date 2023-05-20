Rails.application.routes.draw do
  devise_for :uses
  resources :phones
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "phones#index"
end
