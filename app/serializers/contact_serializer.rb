class ContactSerializer < ActiveModel::Serializer
  attributes :id, :description

  def description
    object.contact_description
  end

end
