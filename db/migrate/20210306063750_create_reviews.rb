class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.float :rate, null: false
      t.integer :product_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
