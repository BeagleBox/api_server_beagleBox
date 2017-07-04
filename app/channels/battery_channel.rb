class BatteryChannel < ApplicationCable::Channel
  def subscribed
     stream_from "battery_channel"
  end

  def inform message
    puts message["message"]
  end

  def unsubscribed
  end

  def getAdmins message

    @humberto = {name:"Humberto", contatct:'5561981701771'}
    @euler = {name:"Tiago", contatct:'5561992326654'}
    @admins = {:admins=>[ @humberto,@euler]}
    @admins = @admins.as_json.merge(:type=>'inform')
    ActionCable.server.broadcast 'battery_channel', @admins
  end



end
