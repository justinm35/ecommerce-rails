class RemoveCustomerIdFromShoppingSession < ActiveRecord::Migration[7.0]
  def change
    remove_column :shopping_sessions, :customer_id, :string
    remove_column :cart_items, :shopping_session_id, :string
    remove_column :cart_items, :product_id, :string
    add_reference :cart_items, :product, foreign_key: true
    add_reference :cart_items, :shopping_sessions
  end
end
