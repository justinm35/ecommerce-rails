class CustomerMailer < ApplicationMailer
  default from: 'notifications@example.com'
  def internal_new_customer_email(shopping_session)
    @shopping_session = shopping_session
    @customer = @shopping_session.customer
    @cart_items = @shopping_session.cart_items
    pp @cart_items

    mail to: @customer.email, subject: "New Customer Order!"
  end
end
