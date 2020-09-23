class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    # @products = Product.all

    # if params[:search]
    #   @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
    # end

    # if params[:discount]
    #   @products = @products.where("price < ?", 10)
    # end

    # if params[:sort] == "price"
    #   if params[:sort_order] == "desc"
    #     @products = @products.order(price: :desc)
    #   else
    #     @products = @products.order(:price)
    #   end
    # else
    #   @products = @products.order(:id)
    # end

    @products = Product
      .title_search(params[:search])
      .discounted(params[:discount])
      .sorted(params[:sort], params[:sort_order])

    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.inventory = params[:inventory] || @product.inventory

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product destroyed successfully!" }
  end

  # def record_player
  #   @turntable = Product.find_by(id: 1)
  #   render "r_player.json.jb"
  # end

  # def receiver
  #   @receiver = Product.find_by(id: 2)
  #   render "stereo.json.jb"
  # end

  # def speakers
  #   @speakers = Product.find_by(id: 3)
  #   render "speakers.json.jb"
  # end

  # def enter_product
  #   @product = params[:wildcard]
  #   render "all_products.json.jb"
  # end
end
