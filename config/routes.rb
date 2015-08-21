Rails.application.routes.draw do
  get 'enquiries/new'

  get 'contacts/new'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products
  root 'high_voltage/pages#show', :id => 'home'
  
  resources :contacts, only: [:new, :create]
  resources :enquiries, only: [:new, :create]
end
