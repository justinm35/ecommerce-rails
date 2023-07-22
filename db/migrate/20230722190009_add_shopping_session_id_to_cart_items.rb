class AddShoppingSessionIdToCartItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :cart_items, :shopping_sessions_id
    add_reference :cart_items, :shopping_session, foreign_key: true
  end
end
