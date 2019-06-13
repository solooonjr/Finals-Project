class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.string :product_name
      t.integer :in_stock
      t.integer :committed
      t.integer :ordered
      t.integer :available

      t.timestamps
    end
  end
end
