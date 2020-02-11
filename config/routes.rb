Rails.application.routes.draw do
  resources :servers
  resources :foods do
    resources :modifications, only: [:new, :create]
  end
  resources :orders
  resources :checks

  get '/', to: 'application#hello'
  post '/login', to: 'application#login'
  get '/logout', to: 'application#logout'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
