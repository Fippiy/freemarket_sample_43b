Rails.application.routes.draw do
  resources :items
  resources :users
  resources :regions
  resources :brands
  resources :categorys
  root 'users#index'
end
