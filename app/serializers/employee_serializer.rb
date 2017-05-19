class EmployeeSerializer < ActiveModel::Serializer
  attributes :id,:employee_name,:employee_registration,:employee_email
  belongs_to :departament
  has_many :contacts
end
