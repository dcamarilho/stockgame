Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :stocks, except: [:destroy] do
    resources :orders, only: [:new, :create]
  end

  resources :orders, only: [:show]

  resources :users, only: [:show, :edit, :update, :destroy, :index]

  get 'dashboard', to: 'users#dashboard'

  get 'dashboard/wallet', to: 'users#user_wallet'


end
