class Delivery < ApplicationRecord

	after_create :set_tracker_id, :set_delivery_route

	belongs_to :route, :class_name => "Route", optional: true

	belongs_to :sender,    :class_name => "Employee", optional: true
	belongs_to :recipient, :class_name => "Employee", optional: true

	belongs_to :source,      :class_name => "Hotspot", optional: true
	belongs_to :destination, :class_name => "Hotspot", optional: true

	has_many :items

	def set_tracker_id
   		update_column(:tracker, "DLV#{self.id}")
	end

	def set_delivery_route
		@routes = Route.where(source_id: self.source_id, destination_id: self.destination_id)
   		self.route = @routes.first
   		self.save
	end
end