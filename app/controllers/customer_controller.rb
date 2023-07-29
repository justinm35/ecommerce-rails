class CustomerController < ApplicationController
  def create
    shopping_session = ShoppingSession.find_by_id(session[:shopping_session_id])

    if customer = Customer.where(:email => params[:email]).first
      customer.update(shopping_session: shopping_session)
      redirect_to '/main'
    else
      customer = Customer.new({email: params[:email],name: params[:name], shopping_session: shopping_session})
      if customer.save
        CustomerMailer.with(customer: customer).internal_new_customer_email(shopping_session).deliver_now
        redirect_to '/main'
      else
        redirect_to '/cart'
      end
    end
    #Start a job to mail internal team and external client
  end
end
