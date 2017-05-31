class CreateMonitorings < ActiveRecord::Migration[5.0]
  def change
    create_table :monitorings do |t|
      t.decimal :weight
      t.decimal :battery_percentage
      
      t.timestamps
    end
  end
end
