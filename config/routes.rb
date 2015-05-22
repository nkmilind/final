Rails.application.routes.draw do

  resources :articles
  resources :authors

  root to: "articles#index"
end
