class DeliveryJob < ApplicationJob
  queue_as :default

  def perform(message)
    puts " ----- id user"
    puts message["recipient_id"]

    id = message["recipient_id"]
    @user = Employee.find_by(id: message["recipient_id"])
    puts " ----- CONTACTS"
    puts @user.contacts[0]["contact_description"]
    puts "perform Delivery Job"
    ActionCable.server.broadcast 'delivery_channel', message:render_message(@user.contacts[0]["contact_description"])
  end

private
  def render_message (message)
      message << { type: "John" }
      puts message
      return message
  end
end
