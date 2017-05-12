class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.integer :employee_registration
      t.string :employee_email
      t.belongs_to :departament, index: true
      t.string :password_digest
      t.timestamps
    end
  end
end
