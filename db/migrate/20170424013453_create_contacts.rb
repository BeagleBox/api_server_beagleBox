class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :contact_description
      t.string :contact_type
      t.belongs_to :employee, index: true
      t.belongs_to :departament, index:true
      t.timestamps
    end
  end
end
