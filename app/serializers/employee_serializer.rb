class EmployeeSerializer < ActiveModel::Serializer
  attributes :id,:name,:registration,:email,:departament,:contacts
end
