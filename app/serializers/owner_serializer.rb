class OwnerSerializer < ActiveModel::Serializer
  attributes :name

  def name
    object.owner_name
  end
end
