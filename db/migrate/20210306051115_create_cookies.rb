class CreateCookies < ActiveRecord::Migration[6.0]
  def change
    create_table :cookies do |t|
      t.string :cookie_identifier_id, null: false
      t.integer :customer_id

      t.timestamps
    end
  end
end