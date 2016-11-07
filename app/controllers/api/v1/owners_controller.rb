class Api::V1::OwnersController < ApiController

  def index
    render json: Owner.all, each_serializer: OwnerSerializer, root: 'owners'
  end

  def show
    render json: { owner_name: owner.owner_name }
  end

  def articles
    render json: owner, serializer: OwnerArticlesSerializer, adapter: :attributes
  end

  private
  def owner
    Owner.find_by!(owner_name: params.require(:owner_name))
  end
end
