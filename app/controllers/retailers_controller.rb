class RetailersController < ApplicationController
  def show
    @products = Product
      .includes(:producer)
      .order(created_at: :desc)
      .all
  end
end
