class StartDeliveryJob < ApplicationJob
  queue_as :default

  def perform(message)
    puts "perform Start Delivery Job"
    ActionCable.server.broadcast 'delivery_channel', message:render_message(message)
  end

  private
    def render_message (message)
        message["type"] << { type: "John" }
    end


end
