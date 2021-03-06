class CreateProductCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :product_collections do |t|
      t.integer :collection_id
      t.integer :product_id

      t.timestamps
    end
  end
end
