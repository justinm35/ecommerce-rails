class CartItemsController < ApplicationController

  def index

  end

  def create # Adding a new item to a users cart
    product_id = params[:product_id]
    product = Product.find(params[:product_id])
    shopping_session = ShoppingSession.find_by_id(session[:shopping_session_id])
    cart_item = CartItem.new(shopping_session: shopping_session , product: product, quantity: params[:quantity])
    if cart_item.save
      redirect_to '/shop', notice: 'Cart item was added succesfully.'
      puts "SUCCESS!!"
    else
      redirect_to '/shop', notice: 'Cart item was not added succesfully.'
      puts "FAILURE: #{cart_item.erros.full_messages.to_sentence}"
    end
  end

  def destroy
    cart_item = CartItem.find_by_id(params[:id])
    if cart_item.destroy
      redirect_to cart_index_path
    else
      render cart_index_path
    end
  end

  def update
    pp "UPDATEDDDDD"
    pp params[:cart_item][:quantity]
    cart_item = CartItem.find_by_id(params[:id])
    cart_item.quantity = params[:cart_item][:quantity]
    if cart_item.save
      redirect_to cart_index_path
    else
      redirect_to cart_index_path, notice: "Something Went wrong, failed to save new quantity"
    end
  end

end
