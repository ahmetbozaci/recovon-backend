Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine, at: '[api]-docs'
  resources :appointments
  resources :doctors
  root "users#index"
  resources :users
  post "/signup", to: "users#create"
  post "/login", to: "sessions#login"
  post "/logout", to: "sessions#logout"
end
