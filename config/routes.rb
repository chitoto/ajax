Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :blogs do
    resources :comments
  end
  resources :users, only: [:new, :create, :show, :index]
  resources :relationships, only: [:create, :destroy]
end
