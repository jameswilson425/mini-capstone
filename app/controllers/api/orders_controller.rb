class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    @order = Order.new(user_id: current_user.id)
    carted_products = User.find(current_user.id).where("status = ?", "carted")

    @order.subtotal = 0
    @carted_products.each do |carted_product|
      @order.subtotal += (carted_product.quantity * carted_product.product.price)
      carted_product.order_id = @order_id
      @order.tax = @order.subtotal * 0.09
      @order.total = @order.tax + @order.subtotal
    end

    if @order.save
      render "show.json.jb"
      @carted_products.each do |carted_product|
        @carted_product.order_id = @order.id
        carted_product.save
        @carted_product.status = "purchased"
      end
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end
