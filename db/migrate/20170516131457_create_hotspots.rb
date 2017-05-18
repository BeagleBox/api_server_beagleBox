class CreateHotspots < ActiveRecord::Migration[5.0]
  def change
    create_table :hotspots do |t|
      t.string :name
      t.string :localization

      t.timestamps
    end
  end
end
