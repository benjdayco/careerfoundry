Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/index'
  post 'static_pages/thank_you'
  root 'static_pages#landing_page'
  #root 'products#index'
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :products do
    resources :comments
  end
  resources :users

  devise_for :users, :controllers => { :registrations => "my_registrations" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
