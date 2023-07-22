class CartItem < ApplicationRecord
  # Cart items will always belong to a shopping sessions/cart
  belongs_to :shopping_session
  # Cart items are associated with products
  belongs_to :product

end
