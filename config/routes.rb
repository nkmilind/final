Rails.application.routes.draw do

  resources :articles
  resources :authors
  resources :users
  resources :sessions

  get "/logout", to: "sessions#destroy"

  root to: "articles#index"
end
