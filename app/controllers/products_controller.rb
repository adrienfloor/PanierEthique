class ProductsController < ApplicationController
  def new
    @product = Product.new
  end
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end
  def index
    @products = Product.order(created_at: :desc).all
  end
  private
  def product_params
    params.require(:product).permit(:name, :quantity, :unit, :sale_price)
  end
end
