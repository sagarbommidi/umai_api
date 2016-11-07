class Api::V1::ArticlesController < ApiController

  def show
    render json: article, serializer: ArticleSerializer, adapter: :attributes
  end

  private
  def article
    @article ||= Article.find(params.require(:id))
  end
end
