class CustomerController < ApplicationController
  def create
    pp p
    customer = Customer.new({email: params[:email],name: params[:name] })
    if customer.save
      redirect_to '/main'
    else
      redirect_to '/cart'
    end
  end
end
