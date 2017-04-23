class EmployeesController < ApplicationController

  before_action :set_employee, only: [:show, :update, :destroy]

  # GET /employees
  def index
    @employees = Employee.all
    render json:@employees
  end

  # GET /employees/:id
  def show
    json_response(@employee)
  end

  # PUT /employees/:id
  def update
    @employee.update(employee_params)
    head :no_content
  end

  # DELETE /employees/:id
  def destroy
    @employee.destroy
    head :no_content
  end

  private

  def employee_params
    # whitelist params
    params.permit(:name,:registration,:password)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end

end
