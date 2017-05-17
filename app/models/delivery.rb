class Delivery < ApplicationRecord

	after_create :set_tracker_id

	belongs_to :sender,    :class_name => "Employee", optional: true
	belongs_to :recipient, :class_name => "Employee", optional: true

	belongs_to :source,      :class_name => "Hotspot", optional: true
	belongs_to :destination, :class_name => "Hotspot", optional: true

	has_many :items

	def set_tracker_id
   		update_column(:tracker, "DLV#{self.id}")
	end
end
