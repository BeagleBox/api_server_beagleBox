class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :status, :tracker
end
