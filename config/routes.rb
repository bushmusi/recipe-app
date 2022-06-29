Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root 'recipes#index'

  resources :recipes, only: [:index, :show, :new]
  resources :foods, only: [:index, :show, :new, :create]
  resources :inventory_foods, only: [:index, :new]
end
