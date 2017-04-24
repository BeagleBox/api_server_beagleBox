class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :description
      t.string :type
      t.belongs_to :employee, index: true

      t.timestamps
    end
  end
end
