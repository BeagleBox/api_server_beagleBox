class AddSourceDestinationToRoutes < ActiveRecord::Migration[5.0]
  def change
  	add_reference :routes, :source,    index: true
    add_reference :routes, :destination, index: true
  end
end
