class Delivery < ApplicationRecord
	belongs_to :sender_employee, :class_name => "Employee"
	belongs_to :recipient_employee, :class_name => "Employee"
end
