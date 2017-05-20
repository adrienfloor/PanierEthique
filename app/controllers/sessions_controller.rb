class SessionsController < ApplicationController
  def new
    case params[:role]
    when 'producer'
      session[:role] = :producer
    when 'retailer'
      session[:role] = :retailer
    when 'client'
      session[:role] = :client
    end

    redirect_to root_path
  end
end
