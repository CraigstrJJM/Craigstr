require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do
  constraints Monban::Constraints::SignedIn.new do
    root "dashboards#show", as: :dashboard
  end

  constraints Monban::Constraints::SignedOut.new do
    root "landings#show"
  end

  resources :categories, only: [] do
    resources :tags, only: [:create, :show, :destroy]
  end

  resources :categories, only: [:create]

  resources :locations, only: [:index, :create, :show] do
    resources :categories, only: [:show]
  end

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :posts, only:
    [:edit, :update, :index, :new, :create, :destroy, :show]
end
