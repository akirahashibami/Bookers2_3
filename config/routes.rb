Rails.application.routes.draw do

  devise_for :users

  root 'homes#index'

  resources :homes, only: [:index, :show]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :index, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
