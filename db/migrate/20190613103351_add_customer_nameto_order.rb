class AddCustomerNametoOrder < ActiveRecord::Migration[5.2]
  def change
	add_column :orders, :customer_name, :string
  end
end
