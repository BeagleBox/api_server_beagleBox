class BatteryChannel < ApplicationCable::Channel
  def subscribed
     stream_from "battery_channel"
  end

  def inform message
    @joao = {name:"João Henrique", contact:'5561991793268'}
    @admins = {:admins=>[@joao]}
    @admins = @admins.as_json.merge(:type=>'NÃOINFORMAR')
    ActionCable.server.broadcast 'battery_channel', @admins
  end

  def changestatus message
    # @joao = {name:"João Henrique", contact:'5561991793268'}
    # @admins = {:admins=>[@joao]}
    # @admins = @admins.as_json.merge(:type=>'NÃOINFORMAR')
    # ActionCable.server.broadcast 'battery_channel', @admins
  end

  def unsubscribed
  end

  def getAdmins message
    @joao = {name:"João Henrique", contact:'5561991793268'}
    # @humberto = {name:"Humberto", contact:'5561981701771'}
    @euler = {name:"Tiago", contact:'5561992326654'}
    @elaine = {name:"Elaine", contact:'5561999458786'}
    # @gabi = {name:"Gabriela", contact:'5561982719722'}
    @gab = {name:"Gabriel", contact:'5561992396446'}
    # @bia = {name:"Beatriz", contact:'5561996510204'}
    @admins = {:admins=>[@joao]}
    # @admins = {:admins=>[@joao,@humberto,@euler,@elaine,@gabi,@gab,@bia]}
    @admins = @admins.as_json.merge(:type=>'infoAdmin')
    ActionCable.server.broadcast 'battery_channel', @admins
  end



end
