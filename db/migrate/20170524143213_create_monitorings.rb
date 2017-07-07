class CreateMonitorings < ActiveRecord::Migration[5.0]
  def change
    create_table :monitorings do |t|
      t.string  :stauts
      
      t.timestamps
    end
  end
end
