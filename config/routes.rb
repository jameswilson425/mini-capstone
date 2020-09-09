Rails.application.routes.draw do
  namespace :api do
    get "/all_products" => "products#all_products"
  end
  namespace :api do
    get "/r_player" => "products#record_player"
  end
  namespace :api do
    get "/stereo" => "products#receiver"
  end
  namespace :api do
    get "/speakers" => "products#speakers"
  end
end
