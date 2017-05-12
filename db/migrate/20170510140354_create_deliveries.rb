class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.string :status

      t.references :sender,    index: true, foreign_key: true
      t.references :recipient, index: true, foreign_key: true

      t.timestamps
    end
  end
end
