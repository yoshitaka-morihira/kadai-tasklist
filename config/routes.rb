Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :task

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
