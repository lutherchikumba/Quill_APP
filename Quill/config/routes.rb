Rails.application.routes.draw do
  resources :comments
  get 'comment/store'
  post 'comment/store'
  root 'topics#index'
  devise_for :users
  resources :topics
  get 'sessions/new'
  resources :settings
  resources :archives
  resources :welcomes
  resources :private_infomations
  resources :profiles
  resources :sign_ups
  resources :log_ins
  resources :featured_articles
  resources :articles
  resources :abouts
  resources :featured_topics
  resources :homes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
