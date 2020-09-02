Rails.application.routes.draw do
  devise_for :users
  root 'schedules#index'
  # resources :users, only: [:index, :edit, :update, :show]
  resources :users, only: [:index, :new, :edit, :update, :show] do 
    resource :ownpage, only: [:new, :create, :show, :edit, :update] do
      collection do
        get "default_page", to: "users#default_page" 
      end
    end
  end
  resources :schedules, only: [:index]
end
