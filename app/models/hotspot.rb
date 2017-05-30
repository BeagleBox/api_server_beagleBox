class Hotspot < ApplicationRecord
	has_many :sources,      :class_name => "Delivery", :foreign_key => :source_id
    has_many :destinations, :class_name => "Delivery", :foreign_key => :destination_id
end
