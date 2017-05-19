class AddIsAdminToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :is_admin, :boolean, :default => false
  end
end
