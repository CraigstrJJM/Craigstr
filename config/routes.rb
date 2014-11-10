require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do
  root "users#new"

  
  constraints Monban::Constraints::SignedIn.new do
    root "dashboards#show", as: :dashboard
  end
  constraints Monban::Constraints::SignedOut.new do
    root "landings#show"
  end
  resources :locations, only: [:create, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :categories, only: [:index, :create, :show]

end
