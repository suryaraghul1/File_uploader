Rails.application.routes.draw do
  get 'creaters/index'
  get 'creaters/new'
  get 'creaters/create'
  get 'creaters/destroy'
  resources :resumes, only: [:new, :create, :index, :destroy]
  resources :sessions, only: [:create,:new, :index, :destroy]
  get 'login', to: 'resumes#index', as: 'login'
 # post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :articles

   resources :creaters, only: [:index, :new, :create, :destroy]
   root "creaters#index"
  end
