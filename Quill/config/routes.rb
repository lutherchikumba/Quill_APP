Rails.application.routes.draw do
  resources :private_infomations
  resources :profiles
  resources :sign_ups
  resources :log_ins
  resources :featured_articles
  resources :articles
  resources :abouts
  resources :topics
  resources :featured_topics
  resources :homes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
