class Delivery < ApplicationRecord

	after_create :set_tracker_id, :set_delivery_route
	after_commit :inform_create_delivery

	belongs_to :route, :class_name => "Route", optional: true

	belongs_to :sender,    :class_name => "Employee", optional: true
	belongs_to :recipient, :class_name => "Employee", optional: true

	belongs_to :source,      :class_name => "Departament", optional: true
	belongs_to :destination, :class_name => "Departament", optional: true

	has_many :items

	def set_tracker_id
   		update_column(:tracker, "DLV#{self.id}")
	end

	def set_delivery_route
		@routes = Route.where(source_id: self.source_id, destination_id: self.destination_id)
   		self.route = @routes.first
   		self.save
	end


	def inform_create_delivery
		DeliveryJob.perform_later self
	end

	# def inform_create_delivery
	# 	DeliveryJob.start_delivery_later self
	# end

end
