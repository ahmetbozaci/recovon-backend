Rails.application.routes.draw do
  resources :appointments
  resources :doctors
  root "users#index"
  resources :users
  post "/signup", to: "users#create"
  post "/login", to: "sessions#login"
  post "/logout", to: "sessions#logout"
end
