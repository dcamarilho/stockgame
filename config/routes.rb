Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:edit, :update, :destroy, :show] do
    resources :orders, only: [:new, :create]
  end

  resources :orders, only: [:show]

  resources :stocks, only: [:show, :edit, :update]

  get 'dashboard', to: 'user#dashboard'

end
