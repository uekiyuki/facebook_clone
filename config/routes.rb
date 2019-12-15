Rails.application.routes.draw do
  root 'feeds#index'
  
  resources :feeds do
    collection do
      post :confirm
    end
  end

  get 'sessions/new'
  resources :sessions, only: [:new, :create, :show, :destroy]
  resources :users
end
