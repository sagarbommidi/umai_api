class OwnerArticlesSerializer < ActiveModel::Serializer
  attributes :name
  has_many :articles, serializer: ArticleSerializer

  def name
    object.owner_name
  end
end
