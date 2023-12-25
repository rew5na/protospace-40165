Rails.application.routes.draw do
  devise_for :creates
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  root to: "prototypes#index"
  delete '/users/sign_out', to: 'sessions#destroy', as: :logout
  post 'users', to: 'users/registrations#create'
  resources :users
  resources :application
  resources :prototypes do
   resources :comments, only: [:create]
  end
 




end
