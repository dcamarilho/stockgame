Rails.application.routes.draw do
  get 'stocks/show'
  get 'stocks/edit'
  get 'stocks/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :stocks, except: [:destroy] do
    resources :orders, only: [:new, :create]
  end

  resources :orders, only: [:show]

  resources :users, only: [:edit, :update, :destroy, :show]

  get 'dashboard', to: 'user#dashboard'

end
