Rails.application.routes.draw do
  
  root to: 'toppages#index'
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  get 'users/index'
  get 'users/new'
  get 'users/show'
  get 'users/create'
  
  get 'login' , to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  

  get 'index/show'
  get 'toppages/index'
  
  get 'signup', to: 'users#new'
  
  resources :works
  resources :users, only: [:index, :show, :create]
end
