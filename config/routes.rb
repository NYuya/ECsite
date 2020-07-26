Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }


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



  
  namespace :admins do
    get '/' => 'admins#top'
    resources :order_items, only: [:update]
    resources :orders, only: [:index, :show, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update, :destroy]
    resources :items
  end


  resources :cart_items, only: [:index, :create, :update, :destroy]
  delete 'cart_items/destroy_all' => 'cart_items#destroy_all'
  resources :orders, only: [:index, :new, :show, :create]
  post 'orders/confirm' => 'orders#confirm'
  get 'orders/thanks' => 'orders#thanks'
  resources :ships, only: [:index, :create, :edit, :update, :destroy]
  resources :items, only: [:index, :show]
  root to: 'items#top'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
