class EmployeeSerializer < ActiveModel::Serializer
  attributes :id,:name,:registration,:email
  belongs_to :departament
  has_many :contacts
end
