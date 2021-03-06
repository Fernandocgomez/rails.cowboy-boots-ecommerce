class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.float :price, null: false
      t.string :size, null: false, array: true, default: []
      t.float :sale_price
      t.integer :admin_id
      
      t.timestamps
    end
  end
end
