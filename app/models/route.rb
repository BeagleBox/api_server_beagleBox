class Route < ApplicationRecord

	after_create :set_route_name

	belongs_to :source,      :class_name => "Departament", optional: true
	belongs_to :destination, :class_name => "Departament", optional: true


	def set_route_name
   		update_column(:name, self.source.departament_name + "-" + self.destination.departament_name)
	end
end
