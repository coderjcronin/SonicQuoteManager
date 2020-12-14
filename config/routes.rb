Rails.application.routes.draw do
  resources :product_line_items
  resources :quotes
  resources :vendors
  resources :parts
  resources :sites
  resources :customers
  devise_for :users
  get 'home/index'
  get 'hello/say_hello'
  
  # There is no "home" view yet. I know it's broken.
  root to: "home#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
