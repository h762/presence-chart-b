Rails.application.routes.draw do
  devise_for :users
  root 'schedules#index'
  resources :users, only: [:index, :edit, :update]
    # resource :ownpage    userにdoも追記
  resources :schedules, only: [:index]
end