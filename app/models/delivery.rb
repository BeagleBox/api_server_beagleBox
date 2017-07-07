class Delivery < ApplicationRecord

	after_create :set_default_values, :set_delivery_route
	after_commit :inform_create_delivery

	belongs_to :route, :class_name => "Route", optional: true

	belongs_to :sender,    :class_name => "Employee", optional: true
	belongs_to :recipient, :class_name => "Employee", optional: true

	belongs_to :source,      :class_name => "Departament", optional: true
	belongs_to :destination, :class_name => "Departament", optional: true

	has_many :items




	def set_default_values
   		update_column(:tracker, "DLV#{self.id}")
   		update_column(:message_type,"Delivery")
	end

	def set_delivery_route
		@routes           = Route.where(source_id: self.source_id, destination_id: self.destination_id)
		@route            = @routes.first
   		self.route        = @route 
   		self.total_steps  = @route.total_steps
   		self.current_step = @route.current_step
   		self.save
	end


private
	def inform_create_delivery
		DeliveryJob.perform_later self
	end

end
