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
    @joao = {name:"João Henrique", contact:'5561991793268'}
    @humberto = {name:"Humberto", contact:'5561981701771'}
    @euler = {name:"Tiago", contact:'5561992326654'}
    @admins = {:admins=>[@joao,@humberto,@euler]}
    @admins = @admins.as_json.merge(:type=>'infoAdmin')
    ActionCable.server.broadcast 'battery_channel', @admins
  end



end
