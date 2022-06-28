Rails.application.routes.draw do
  get 'inventory_foods/index'
  get 'inventory_foods/new'
  get 'foods/index'
  get 'foods/new'
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'recipes/public_recipes'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # root to: "home#index"
  root 'recipes#index'
  
  resources :recipes, only: [:index, :show, :new]
  resources :foods, only: [:index, :show, :new]
  resources :inventory_foods, only: [:index, :new]
end
