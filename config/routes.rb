Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins
  devise_for :users
  root  'articles#index'
  resources :articles do
    resources :comments, only: [:create]
  end
  resources :users , only: [:show]
end
