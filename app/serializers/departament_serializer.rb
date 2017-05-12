class DepartamentSerializer < ActiveModel::Serializer
  attributes :id,:departament_name
  has_many :contacts
end
