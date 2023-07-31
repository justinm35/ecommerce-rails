# Preview all emails at http://localhost:3000/rails/mailers/customer_mailer
class CustomerMailerPreview < ActionMailer::Preview
  def internal_new_customer_email
    CustomerMailer.with(customer: Customer.first).internal_new_customer_email(ShoppingSession.find_by_id(5))
  end
end
