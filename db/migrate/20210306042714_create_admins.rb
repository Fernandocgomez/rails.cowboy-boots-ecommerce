class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :user_type, null: false, default: "admin"
      
      t.timestamps
    end
  end
end
