Rails.application.routes.draw do
  devise_for :users
  root 'schedules#index'
  resources :users, only: [:index, :edit, :update, :show] do
    resource :ownpage, only: [:show]
  end
  resources :schedules, only: [:index]
end