Rails.application.routes.draw do
  resources :feeds do
    collection do
      post :confirm
    
    end
  end


  get 'sessions/new'
  resources :sessions, only: [:new, :create, :show, :destroy]
  resources :users

end
