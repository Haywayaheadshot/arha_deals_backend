Rails.application.routes.draw do
  resources :phones
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "phones#index"
end
