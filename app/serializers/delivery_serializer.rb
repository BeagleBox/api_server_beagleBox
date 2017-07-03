class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :type, :status, :created_at, :updated_at, :tracker, :route, :sender, :recipient
  belongs_to :source
  belongs_to :destination


  def type
    object.message_type
  end

  def sender
    [object.sender]
  end


end
