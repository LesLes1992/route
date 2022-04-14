Rails.application.routes.draw do
  get 'menus', to: 'menus#index'
  root 'cafe#index'
  post 'menus', to: 'menus#create'
end
