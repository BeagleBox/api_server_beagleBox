class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :status, :tracker, :route
end
