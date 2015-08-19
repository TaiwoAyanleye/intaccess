Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products
  root 'products#index'
  resources :messages, only: [:new, :create]
end
