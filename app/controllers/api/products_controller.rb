class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "all_products.json.jb"
  end

  def record_player
    @turntable = Product.find_by(id: 1)
    render "r_player.json.jb"
  end

  def receiver
    @receiver = Product.find_by(id: 2)
    render "stereo.json.jb"
  end

  def speakers
    @speakers = Product.find_by(id: 3)
    render "speakers.json.jb"
  end
end
