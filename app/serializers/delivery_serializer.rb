class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :status, :created_at, :updated_at, :tracker, :route, :sender, :recipient
  belongs_to :source
  belongs_to :destination
end
