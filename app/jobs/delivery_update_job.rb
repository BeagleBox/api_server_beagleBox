class DeliveryUpdateJob < ApplicationJob
  queue_as :default

  def perform(data)
    puts data
    # DeliveriesController.update_current()
  end
end
