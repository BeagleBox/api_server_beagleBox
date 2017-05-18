class Route < ApplicationRecord
	belongs_to :source,      :class_name => "Hotspot", optional: true
	belongs_to :destination, :class_name => "Hotspot", optional: true
end
