class DeliveryJob < ApplicationJob
  queue_as :default

  def perform(message)
    @mes = DeliverySerializer.new(message)
    @sender = Employee.find_by(employee_registration:message.sender.employee_registration)
    @sender = EmployeeSerializer.new(@sender)
    @recipient = Employee.find_by(employee_registration:message.recipient.employee_registration)
    @recipient = EmployeeSerializer.new(@recipient)
    @mes = @mes.as_json.merge(:type=>'Delivery',:sender => @sender,:recipient=>@recipient)
    ActionCable.server.broadcast 'delivery_channel',@mes
  end

end
