Rails.application.routes.draw do
  get "users/show"
  devise_for :users, controllers: {
    sessions: "custom"
  }
  root "pages#home"
  get "about", to: "pages#about"

  resources :loans
  resources :users, only: [:index, :destroy] do
    member do
      post "make_admin"
    end
  end
end
