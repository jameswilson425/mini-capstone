Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
    get "/r_player" => "products#record_player"
    get "/stereo" => "products#receiver"
    get "/speakers" => "products#speakers"
    get "/products/:wildcard" => "products#enter_product"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
