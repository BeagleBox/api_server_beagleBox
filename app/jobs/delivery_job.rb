class DeliveryJob < ApplicationJob
  queue_as :default

  def perform(message)

    # message["type"] = "delivery"
    @mes = DeliverySerializer.new(message)
    @mes = @mes.as_json.merge(:type=>'Delivery')
    ActionCable.server.broadcast 'delivery_channel',@mes
  end

private
  def render_message (message)

    puts "AAAAAAAAAAAAAAAAAAAAAAAAAA"
    ret DeliverySerializer.new(message).as_json
    message.as_json.merge(:type => 'Delivery')
  end
end
