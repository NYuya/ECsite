Rails.application.routes.draw do
  namespace :admins do
    put 'order_items/update'
  end
  namespace :admins do
    get 'orders/index'
    get 'orders/show'
    put 'orders/update'
  end
  namespace :admins do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
    put 'customers/update'
  end
  namespace :admins do
    get 'genres/index'
    put 'genres/update'
    put 'genres/create'
    get 'genres/edit'
  end
  namespace :admins do
    get 'items/index'
    put 'items/update'
    put 'items/create'
    put 'items/new'
    get 'items/show'
    get 'items/edit'
  end
  namespace :customers do
    get 'cart_items/index'
    put 'cart_items/create'
    put 'cart_items/destroy'
    put 'cart_items/update'
    put 'cart_items/destroy_all'
  end
  namespace :customers do
    get 'orders/new'
    put 'orders/create'
    get 'orders/show'
    get 'orders/confirm'
    get 'orders/thanks'
    get 'orders/index'
  end
  namespace :customers do
    get 'ships/index'
    put 'ships/edit'
    put 'ships/destroy'
    put 'ships/update'
    put 'ships/create'
  end
  namespace :customers do
    get 'items/index'
    get 'items/show'
    get 'items/top'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
