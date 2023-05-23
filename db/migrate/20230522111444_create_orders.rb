class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :product, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :price
      t.string :delivery_address
      t.string :payment_method
      t.text :note

      t.timestamps
    end
  end
end
