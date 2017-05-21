class DeliveryChannel < ApplicationCable::Channel
  def subscribed
     stream_from "delivery_channel"
  end

  def unsubscribed
  end

  def start_delivery
  end

  def finish_delivery
  end

  def open_car
  end

  def lock_car
  end

  def get_sensors
  end

end
