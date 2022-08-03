# config/routes.rb
Rails.application.routes.draw do
  resources :blogs
  # route to test your configuration
  # get '/hello', to: 'application#hello_world'

  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end