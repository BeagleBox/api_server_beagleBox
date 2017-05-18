class AddSourceDestinationToDelivery < ActiveRecord::Migration[5.0]
  def change
  	add_reference :deliveries, :source,    index: true
    add_reference :deliveries, :destination, index: true
  end
end
