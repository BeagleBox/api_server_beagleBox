class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.string :status
      t.string :tracker
      t.belongs_to :route, index: true

      t.timestamps
    end
  end
end
