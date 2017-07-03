class StartDeliveryJob < ApplicationJob
  queue_as :default

  def perform(message)
    puts "perform Start Delivery Job"

  end

  private
    def render_message (message)
        message["type"] << { type: "John" }
    end


end
