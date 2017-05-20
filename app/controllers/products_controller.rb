class ProductsController < ApplicationController
  def new
    @product = Product.new
  end
  def create
    @product = Product.create(product_params)
  end
  def index
    @products = Product.order(created_at: :desc).all
  end
  private
  def product_params
    params.require(:product).permit(:name, :quantity, :unit, :sale_price)
  end
end
