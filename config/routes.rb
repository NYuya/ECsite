Rails.application.routes.draw do
  namespace :admins do
    post 'order_items/update'
  end
  namespace :admins do
    get 'orders/index'
    get 'orders/show'
    post 'orders/update'
  end
  namespace :admins do
    get 'customers/index'
    get 'customers/show'
    post 'customers/edit'
    post 'customers/update'
  end
  namespace :admins do
    get 'genres/index'
    post 'genres/update'
    post 'genres/create'
    post 'genres/edit'
    delete 'genres/destroy'
  end
  namespace :admins do
    get 'items/index'
    post 'items/update'
    post 'items/create'
    post 'items/new'
    get 'items/show'
    post 'items/edit'
    delete 'items/destroy'
  end
  namespace :customers do
    get 'cart_items/index'
    post 'cart_items/create'
    delete 'cart_items/destroy'
    post 'cart_items/update'
    delete 'cart_items/destroy_all'
  end
  namespace :customers do
    post 'orders/new'
    post 'orders/create'
    get 'orders/show'
    get 'orders/confirm'
    get 'orders/thanks'
    get 'orders/index'
  end
  namespace :customers do
    get 'ships/index'
    post 'ships/edit'
    delete 'ships/destroy'
    post 'ships/update'
    post 'ships/create'
  end
  namespace :customers do
    get 'items/index'
    get 'items/show'
    get 'items/top'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
