Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#public_recipes"

  devise_for :users
  root 'recipes#index'

  resources :recipes, only: [:index, :show, :new]
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  resources :inventory_foods, only: [:index, :new]
end
