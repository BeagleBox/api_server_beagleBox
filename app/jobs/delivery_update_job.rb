class DeliveryUpdateJob < ApplicationJob
  queue_as :default

  def perform(message)
    puts "\n----------------------------------"
    puts "aqui Deve"
    puts message.as_json["tracker"]

    puts "----------------------------------\n"
    # DeliveriesController.update_current_delivery(data)
    @delivery = Delivery.find_by(tracker:message.as_json["tracker"])
    @delivery.update(current_step:message.as_json["message"])
  end
end
