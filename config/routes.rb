Rails.application.routes.draw do
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :show, :destroy]
  resources :users
end