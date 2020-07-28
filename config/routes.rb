Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#index'

  resources :homes, only: [:index, :show]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  # newのページは作らないので６つ
  resources :users, only: [:index, :show, :edit, :update]

end
