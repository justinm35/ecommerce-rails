class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :stock
      t.text :image
      t.text :description
      t.boolean :visible
      t.float :price

      t.timestamps
    end
  end
end
