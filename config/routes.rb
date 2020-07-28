Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#index'
  get 'home/about' => 'homes#show', as: 'home'

  resources :homes, only: [:index]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy] do
  # newのページは作らないので６つ
    resources :post_comments, only: [:create, :destroy]
    # bookに対してコメント機能をつける(親子関係(ネスト))
  end

  resources :users, only: [:index, :show, :edit, :update]

end
