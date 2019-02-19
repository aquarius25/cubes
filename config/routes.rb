Rails.application.routes.draw do
  devise_for :users
  root "articles#index"
  resources :tweets
  resources :users
  resources :articles
  resources :messages
  resources :groups
end
