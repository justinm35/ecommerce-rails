class ApplicationController < ActionController::Base
  before_action :init_user_shopping_session

  private

  def init_user_shopping_session
    if !session[:shopping_session_id] #If there is no session id stored in the cookies #then we create a new sessino
      shopping_session = ShoppingSession.new({total: 0})
      if shopping_session.save
        session[:shopping_session_id] = shopping_session.id # stores session id in session hash
        redirect_to :main, notice: 'Successfully created a new shopping session.'
      else
        redirect_to :main , notice: 'There was a problem, try again.'
      end
    end

  end

end
