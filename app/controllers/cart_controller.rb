class CartController < ApplicationController
  def index
    shopping_session = ShoppingSession.find_by_id(session[:shopping_session_id])
    @cart_items = shopping_session.cart_items.all
    pp @cart_items
  end

  def update
    cart_item = CartItem.find_by_id(params[:id])
    cart_item.quantity = params[:qty_change]
  end
end
