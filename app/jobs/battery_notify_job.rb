class BatteryNotifyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @joao = {}
    @admins = {:support=>[@joao]}
    @admins = @admins.as_json.merge(:type=>'Change')
    ActionCable.server.broadcast 'battery_channel', @admins
  end
end
