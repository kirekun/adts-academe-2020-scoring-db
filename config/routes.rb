Rails.application.routes.draw do

  resources :manages
  resources :grades
  resources :papers
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  
  get 'homepage/home'
  get 'homepage/contact'
  get 'homepage/about'
  
  get 'contact', to: 'homepage#contact', as: 'contact'
  get 'about', to: 'homepage#about', as: 'about'
  
  get 'paperlist', to: 'papers#index', as: 'paperlist'
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  # For Admin user
  get 'addpaper', to: 'papers#index', as: 'addpaper'
  
  # For Elevated user

  # For Normal user
  
  root 'homepage#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
