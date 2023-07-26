class AddShoppingSessionIdToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_reference :customers, :shopping_session, null: false, foreign_key: true
  end
end
