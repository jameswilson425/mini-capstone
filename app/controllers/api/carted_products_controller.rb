class Api::CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
    )

    if @carted_product.save
      render json: { message: "Item added to cart!" }
    end
  end

  def index
    @carted_product = CartedProduct.where("user_id = ?", current_user.id)
    render "index.json.jb"
  end
end
