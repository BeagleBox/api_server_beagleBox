class Departament < ApplicationRecord

	has_many :sources,      :class_name => "Delivery", :foreign_key => :source_id
	has_many :destinations, :class_name => "Delivery", :foreign_key => :destination_id

    validates :departament_name, uniqueness: true, presence: true , length:{in: 3..40}
    has_many :contacts, dependent: :destroy

    accepts_nested_attributes_for :contacts

end
