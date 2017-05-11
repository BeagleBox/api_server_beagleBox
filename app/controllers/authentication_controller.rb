class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate
    command = AuthenticateEmployee.call(params[:email], params[:password])

    if command.success?
      render json: command 
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end