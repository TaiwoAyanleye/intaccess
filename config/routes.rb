Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products
  root 'high_voltage/pages#show', :id => 'home'
  
  resources :messages, only: [:new, :create]
end
