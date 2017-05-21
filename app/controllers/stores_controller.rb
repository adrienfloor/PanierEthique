require 'carrefour_store'

class StoresController < ApplicationController
  def index
    stores = CarrefourStore.request!(params[:city])

    respond_to do |format|
      format.json { render json: stores }
    end
  end
end
