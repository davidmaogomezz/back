class AddDataToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :data, :jsonb
  end
end
