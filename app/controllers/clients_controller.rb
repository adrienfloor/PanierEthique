class ClientsController < ApplicationController

  def show
    @products = Product.order(created_at: :desc).all
  end

end
