Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#public_recipes"

  resources :recipes, only: [:index, :show, :new]
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  resources :inventory_foods, only: [:index, :new]
end
