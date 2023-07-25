class CartController < ApplicationController
  def index
    shopping_session = ShoppingSession.find_by_id(session[:shopping_session_id])
    @cart_items = shopping_session.cart_items.all
  end

  def update
    pp 'I GOT THE CHANGE'
    cart_item = CartItem.find_by_id(params[:id])
    cart_item.quantity = params[:quantity]
    redirect_to cart_index_path
  end
end
