Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#public_recipes"

  # or we can have a homepage at the start: "users#index"

  resources :recipes, only: [:index, :show, :new, :create] do 
    member do
      get :delete
    end
  end
  resources :foods, only: [:index, :show, :new]
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  resources :inventory, only: [:index, :new, :create, :show, :destroy]
end
