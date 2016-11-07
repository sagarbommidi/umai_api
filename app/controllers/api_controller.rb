class ApiController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_client
  rescue_from Exception, with: :internal_error
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  protected

  def authenticate_client
    # have the logic to authenticate the client, currently returning true for all cases
    true
  end

  def internal_error(exception)
    # Can be handled defferently for each exception. This method is default one if nothing specific has matched.
    render json: { error: exception.message }.to_json, status: 500
    return
  end

  def record_not_found(exception)
    render json: { error: exception.message }.to_json, status: 404
    return
  end
end
