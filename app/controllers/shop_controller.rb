class ShopController < ApplicationController
  def index
    @products = Product.all
  end
  def show

  end
end
