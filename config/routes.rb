Rails.application.routes.draw do
  root to: 'orders#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/orders', to: 'orders#index'
  get '/orders/:order_id', to: 'orders#show'
end
