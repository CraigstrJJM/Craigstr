Rails.application.routes.draw do
  root "users#new"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :categories, only: [:index, :new, :create, :show]

  root to: "categories#index"
end
