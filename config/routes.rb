Rails.application.routes.draw do
  devise_for :users
  resources :users
  devise_for :uses
  resources :phones
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_scope :user do
    root "devise/sessions#new"
  end
end
