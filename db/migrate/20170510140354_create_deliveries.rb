class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.string :message_type
      t.string :status
      t.string :tracker
      t.string :key_access
      t.string :key_access_status
      t.string :open
      t.integer :total_steps
      t.integer :current_step
      t.belongs_to :route, index: true

      t.timestamps
    end
  end
end
