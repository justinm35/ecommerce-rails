class ApplicationController < ActionController::Base
  before_action :init_user_shopping_session

  private

  def init_user_shopping_session
    shopping_session = ShoppingSession.find_by_id(session[:shopping_session_id])
    if shopping_session.nil?
      shopping_session = ShoppingSession.new({total: 0})
      if shopping_session.save
        session[:shopping_session_id] = shopping_session.id # stores session id in session(cookie) hash
        # Calls job to delete the customers session if they have not
        SessionCleanupJob.set(wait: 2.days).perform_later(shopping_session.id)
        redirect_to :main, notice: 'Successfully created a new shopping session.'
      else
        pp "ERROR", shopping_session.errors.full_messages.to_sentence
        redirect_to :main , notice: shopping_session.errors.full_messages.to_sentence
      end
    end
  end

end
