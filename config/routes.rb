Rails.application.routes.draw do
  # mount Rswag::Api::Engine => '/api-docs'
  # mount Rswag::Ui::Engine, at: '[api]-docs'
  resources :appointments, only: [:index, :show, :create, :destroy]
  resources :doctors, only: [:index, :show, :create]
  resources :users, only: :index
  post "/signup", to: "users#create"
  post "/login", to: "sessions#login"
  post "/logout", to: "sessions#logout"
end
