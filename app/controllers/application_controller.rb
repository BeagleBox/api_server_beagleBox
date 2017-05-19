class ApplicationController < ActionController::API

  attr_reader :current_employee

  def current_employee
    Thread.current[:current_employee] = @current_employee
  end

  private

  def authenticate_request
    @current_employee = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_employee
  end
end
