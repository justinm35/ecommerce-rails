class CustomerController < ApplicationController
  def create
    shopping_session = ShoppingSession.find_by_id(session[:shopping_session_id])

    if customer = Customer.where(:email => params[:email]).first
      pp "CUSTOMER INFO"
      pp customer
      customer.update(shopping_session: shopping_session)
      redirect_to '/main'
    else
      customer = Customer.new({email: params[:email],name: params[:name], shopping_session: shopping_session})
      if customer.save
        redirect_to '/main'
      else
        redirect_to '/cart'
      end
    end
    #Start a job to mail internal team and external client
  end
end
