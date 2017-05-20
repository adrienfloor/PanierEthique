class SessionsController < ApplicationController
  def new
    case params[:role]
    when 'producer'
      session[:role] = :producer
      session[:producer_id] = 1
    when 'retailer'
      session[:role] = :retailer
    when 'client'
      session[:role] = :client
    end

    redirect_to root_path
  end

  def destroy
    session[:role] = nil

    redirect_to root_path
  end
end
