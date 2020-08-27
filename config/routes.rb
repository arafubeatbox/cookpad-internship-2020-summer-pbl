Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'recipes#index'

  resources :home
  resources :week_data
  resources :day_kondates
  resources :kondates
end
