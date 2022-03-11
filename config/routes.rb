Rails.application.routes.draw do
  resources :appointments, only: [:index, :show, :create, :destroy]
  resources :doctors, only: [:index, :show, :create]
  resources :users, only: :index
  post "/signup", to: "users#create"
  post "/login", to: "sessions#login"
  post "/logout", to: "sessions#logout"
end
