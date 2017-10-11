Rails.application.routes.draw do
  devise_for :users
  root 'requests#index'

  resources :team_members
  resources :requests
end
