Rails.application.routes.draw do


  resources :servers, only: [:new, :create, :show]
  resources :foods, only: [:index, :new, :create, :destroy]

  resources :orders, only: [:show, :destroy] do
    resources :modifications, only: [:new, :create, :index, :show, :destroy]
  end

  resources :checks, only: [:show, :index, :create, :edit]
  get '/session_check/:id', to: 'checks#session_check', as: 'session_check'
  get '/add_item/:id', to: 'checks#add_item', as: 'add_item'
  post'/item_added/:id', to: 'checks#item_added', as: 'item_added'
  get '/payment/:id', to: 'checks#payment', as: 'payment'
  get '/refund/:id', to: 'checks#refund', as: 'refund'
  post '/add_tip/:id', to: 'checks#add_tip', as: 'add_tip'

  get '/', to: 'application#hello'
  post '/login', to: 'application#login'
  get '/logout', to: 'application#logout', as: 'logout'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
