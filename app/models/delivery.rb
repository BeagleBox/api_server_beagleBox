class Delivery < ApplicationRecord
	belongs_to :sender,    :class_name => "Employee"
	belongs_to :recipient, :class_name => "Employee"
end
