class Route < ApplicationRecord
	belongs_to :source,      :class_name => "Departament", optional: true
	belongs_to :destination, :class_name => "Departament", optional: true
end
