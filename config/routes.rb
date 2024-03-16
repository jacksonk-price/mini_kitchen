Rails.application.routes.draw do
  devise_for :users
  resources :recipes
  resources :ingredients
  get 'home/index'
  root "home#index"
end
