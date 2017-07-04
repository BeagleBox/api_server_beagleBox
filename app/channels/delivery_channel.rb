class DeliveryChannel < ApplicationCable::Channel
  def subscribed
     stream_from "delivery_channel"
  end

  def unsubscribed
  end

  def start_delivery(data)

  end

  def finish_delivery
  end

  def open_car
  end

  def lock_car
  end

  private
    def render_message (message)
       message
    end


end
