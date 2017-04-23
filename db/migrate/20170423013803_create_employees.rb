class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :registration
      t.string :password_digest

      t.timestamps
    end
  end
end
