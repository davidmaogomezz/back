class CreateShipments < ActiveRecord::Migration[6.0]
  def change
    create_table :shipments do |t|
      t.references :order, null: false, foreign_key: true
      t.string :courier

      t.timestamps
    end
  end
end
