class SessionCleanupJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    shopping_session = ShoppingSession.find_by_id(args.first)
    if shopping_session.customer.nil?
    shopping_session.destroy if shopping_session
    else
      puts "User was found: Record Validated"
    end
  end
end
