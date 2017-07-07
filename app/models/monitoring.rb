class Monitoring < ApplicationRecord

  after_commit :inform_battery_change

  private
  	def inform_battery_change
  	   BatteryNotifyJob.perform_later self
  	end

end
