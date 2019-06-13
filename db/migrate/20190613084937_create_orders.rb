class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :product
      t.integer :quantity
      t.integer :inventory_id

      t.timestamps
    end
  end
end
