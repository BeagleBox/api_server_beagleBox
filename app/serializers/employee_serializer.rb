class EmployeeSerializer < ActiveModel::Serializer
  attributes :id,:employee_name,:employee_registration,:employee_email,:contacts, :is_admin
  belongs_to :departament
  has_many :contacts, serializer: ContactSerializer

end
