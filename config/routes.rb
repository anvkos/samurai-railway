Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  resources :railway_stations do
    patch :update_position, on: :member
    patch :update_time, on: :member
  end
  resources :routes
  resources :trains do
    resources :carriages, shallow: true
  end
  resource :search, only: [:create, :show]
  resources :tickets, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
