Rails.application.routes.draw do
  namespace :api do
    get "/all_products" => "products#all_products"
    get "/r_player" => "products#record_player"
    get "/stereo" => "products#receiver"
    get "/speakers" => "products#speakers"
  end
end
