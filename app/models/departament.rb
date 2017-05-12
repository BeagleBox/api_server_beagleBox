class Departament < ApplicationRecord

    validates :departament_name, uniqueness: true, presence: true , length:{in: 3..40}
    has_many :contacts, dependent: :destroy

    accepts_nested_attributes_for :contacts

end
