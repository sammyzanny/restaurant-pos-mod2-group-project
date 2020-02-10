Rails.application.routes.draw do
  
  resources :foods
  resources :orders
  resources :checks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
