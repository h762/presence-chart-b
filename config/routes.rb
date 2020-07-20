Rails.application.routes.draw do
  devise_for :users
  root 'schedules#index'
  resources :users, only: [:index, :edit, :update, :show]
  # resource :ownpage, only: [:show]
  resources :schedules, only: [:index]
end