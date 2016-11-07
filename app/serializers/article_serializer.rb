class ArticleSerializer < ActiveModel::Serializer
  attributes :owner_name, :id, :name, :description, :price

  def price
    "#{object.price}$"
  end

  def owner_name
    object.owner.owner_name
  end
end
