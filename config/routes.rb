Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'custom'
  }
  root 'pages#home'
  get 'about', to: 'pages#about'
  
  resources :loans
end
