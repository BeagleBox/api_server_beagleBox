class EmployeesController < ApplicationController

  before_action :set_employee, only: [:show, :update, :destroy]

  # GET /employees
  def index
    @employees = Employee.all
    render json:@employees
  end

  # GET /employees/:id
  def show
    render json:(@employee)
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

  def search_employees
    @employees = Employee.all
    render json:@employees
  end

  def search_employees_by_departament

    if params[:departament] != '0'
      @employees = Employee.where(departament_id: params[:departament])
    else
      @employees = Employee.all
    end
    render json:@employees
  end

  private

  def employee_params
    # whitelist params
    params.permit(:employee_name,:employee_registration,:password,:employee_email)
  end

  def set_employee
    @employee = Employee.find(params[:id])
    @employee.contacts = @employee.contacts
  end

end
