class CreateShoppingSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_sessions do |t|
      t.string :customer_id
      t.float :total

      t.timestamps
    end
  end
end
