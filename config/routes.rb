Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'requests#index'
  end

  resources :team_members
  resources :requests

  devise_scope :user do
    root 'devise/sessions#new'
  end
end
