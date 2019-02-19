Rails.application.routes.draw do
  root "articles#index"
  resources :tweets
  resources :users
  resources :articles
  resources :messages
end
