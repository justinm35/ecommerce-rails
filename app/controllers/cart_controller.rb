class CartController < ApplicationController
  def index
    shopping_session = ShoppingSession.find_by_id(session[:shopping_session_id])
    @cart_items = shopping_session.cart_items.all
    pp @cart_items
  end
end
