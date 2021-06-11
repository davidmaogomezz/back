class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.boolean :confirmed
      t.string :financial_status

      t.timestamps
    end
  end
end
