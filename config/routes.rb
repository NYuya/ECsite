Rails.application.routes.draw do
  root to: 'items#top'
  post 'orders/confirm' => 'orders#confirm'
  get 'orders/thanks' => 'orders#thanks'
  delete 'cart_items/destroy_all' => 'cart_items#destroy_all'

  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }

  namespace :admins do
    get '/' => 'admins#top'
    resources :order_items, only: [:update]
    resources :orders, only: [:index, :show, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update, :destroy]
    resources :items
  end

  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    registrations: 'customers/registrations',
    passwords: 'customers/passwords'
  }

  namespace :customers do
      get 'confirm' => 'customers#confirm'
      patch 'hide' => 'customers#hide'
      put 'hide' => 'customers#hide'
  end

  scope module: :customers do
      resources :customers, only: [:show, :edit, :update]
  end

  resources :cart_items, only: [:index, :create, :update, :destroy]
  resources :orders, only: [:index, :new, :show, :create]
  resources :ships, only: [:index, :create, :edit, :update, :destroy]
  resources :items, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
