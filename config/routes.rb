Rails.application.routes.draw do
  resources :appointments
  resources :doctors
  root "users#index"
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/login", to: "sessions#login"

  # Defines the root path route ("/")
  # root "articles#index"
end
