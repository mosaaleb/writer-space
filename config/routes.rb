Rails.application.routes.draw do
  devise_for :users
  root 'homes#show'
  resources :stories, only: [:new, :create]
end
