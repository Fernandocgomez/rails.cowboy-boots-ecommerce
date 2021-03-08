class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :name, null: false
      t.integer :admin_id
      
      t.timestamps
    end
  end
end
