class AuthenticationController < ApplicationController
  # skip_before_action :authenticate_request

  def authenticate
    command = AuthenticateEmployee.call(params[:employee_email], params[:password])
    if command.success?
      render json: { current_employee: command.instance_variable_get(:'@current_employee'), result: command.result}
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end
