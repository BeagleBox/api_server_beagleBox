class AddSenderReceiverToDelivery < ActiveRecord::Migration[5.0]
  def change
  	add_reference :deliveries, :sender,    index: true
    add_reference :deliveries, :recipient, index: true
  end
end
