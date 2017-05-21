class DeliveryJob < ApplicationJob
  queue_as :default

  def perform(*args)
    ActionCable.server.broadcast 'delivery_channel', message:render_message(message)
  end

  def start_delivery (message)

  end

private
  def render_message (message)
    message.json
  end
end
