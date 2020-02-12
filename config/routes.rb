Rails.application.routes.draw do
  resources :servers
  resources :foods do
    resources :modifications, only: [:new, :create]
  end
  resources :orders
  resources :checks
  get '/session_check/:id', to: 'checks#session_check', as: 'session_check'
  get '/add_item/:id', to: 'checks#add_item', as: 'add_item'
  post'/item_added/:id', to: 'checks#item_added', as: 'item_added'

  get '/', to: 'application#hello'
  post '/login', to: 'application#login'
  get '/logout', to: 'application#logout', as: 'logout'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
