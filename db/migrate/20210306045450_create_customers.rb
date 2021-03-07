class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :country
      t.string :state
      t.string :zip_code
      t.string :phone
      t.string :email
      t.string :password_digest
      t.string :type, null: false
      t.datetime :creation_datetime, null: false
      
      t.timestamps
    end
  end
end
 