class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :admin_name
      t.integer :admin_registration
      t.string :admin_email
      t.string :admin_password_digest
      t.timestamps
    end
  end
end
