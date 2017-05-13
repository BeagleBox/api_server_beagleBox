class Delivery < ApplicationRecord
	belongs_to :sender,    :class_name => "Employee", optional: true
	belongs_to :recipient, :class_name => "Employee", optional: true
	has_many :items
end
