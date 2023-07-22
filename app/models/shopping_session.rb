class ShoppingSession < ApplicationRecord
#Shopping cart will have multiple cart items
has_many :cart_items
# a shopping session will have products through the cart_items
has_many :products, through: :cart_items
end
