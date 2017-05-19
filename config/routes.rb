Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'singup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
