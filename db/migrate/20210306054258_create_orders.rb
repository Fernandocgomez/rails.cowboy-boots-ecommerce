class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :creation_datetime, null: false
      t.boolean :payment_status, null: false, default: false
      t.boolean :fulfillment_status, null: false, default: false
      t.float :total, null: false
      t.float :sub_total, null: false
      t.integer :number_of_items, null: false
      t.integer :customer_id
      t.integer :product_id
      t.integer :admin_id
      
      t.timestamps
    end
  end
end
