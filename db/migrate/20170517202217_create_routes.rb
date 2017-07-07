class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :total_steps
      t.integer :current_step

      t.timestamps
    end
  end
end
