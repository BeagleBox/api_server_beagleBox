class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :status, :tracker, :route
  belongs_to :source
  belongs_to :destination
end
