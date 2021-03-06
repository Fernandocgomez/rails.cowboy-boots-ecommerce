class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.float :total, null: false, default: 0.00
      t.integer :customer_id

      t.timestamps
    end
  end
end
