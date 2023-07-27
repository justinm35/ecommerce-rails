class CustomerController < ApplicationController
  def create
    shopping_session = ShoppingSession.find_by_id(session[:shopping_session_id])
    customer = Customer.new({email: params[:email],name: params[:name], shopping_session: shopping_session})
    if customer.save
      redirect_to '/main'
    else
      redirect_to '/cart'
    end
    #Start a job to mail internal team and external client
  end
end
