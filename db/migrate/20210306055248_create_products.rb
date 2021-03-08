class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.float :price, null: false
      t.float :sale_price
      t.float :size, null: false, array: true
      t.integer :admin_id
      
      t.timestamps
    end
  end
end
