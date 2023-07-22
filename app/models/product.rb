class Product < ApplicationRecord
  # A product can be asigned to multiple cart items from different customers
  has_many :cart_items
  # A product belongs to multiple customers shopping sessions through the cart items
  has_many :shopping_sessions, through: :cart_items
end
