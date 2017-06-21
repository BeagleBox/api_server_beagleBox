class DeliveryJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'delivery_channel', message:render_message("message")
  end

  def start_delivery (message)
    ActionCable.server.broadcast 'delivery_channel', message:render_message("ooooooooooooooooooooo")
  end

private
  def render_message (message)
    message.json
  end
end
