Rails.application.routes.draw do
  resources :resumes, only: [:new, :create, :index, :destroy]
  resources :sessions, only: [:create,:new, :index, :destroy]
 root 'resumes#new'
  get 'login', to: 'resumes#index', as: 'login'
 # post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  end
