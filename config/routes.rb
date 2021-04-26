# config/routes.rb

Rails.application.routes.draw do
  resources :charges, only: [:new, :create]
  devise_for :users
  resources :posts
  root to: 'posts#index'
  
  get '/charges',to: 'charges#thanks', as: 'thanks'
end