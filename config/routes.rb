Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destory'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
  
  resources :taskposts, only: [:create, :destroy]
  
  resources :tasks
end
