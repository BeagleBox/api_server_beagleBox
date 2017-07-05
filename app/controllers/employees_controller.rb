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

  # POST /employees
  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render json:(@employee), status: :created, location: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end

    @employee.contacts.create(contact_description: params[:contact_description])
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
    params.permit(:employee_name,:employee_registration,:password,:password_confirmation,:employee_email,:employee,:departament_id)
  end

  def set_employee
    @employee = Employee.find(params[:id])
    @employee.contacts = @employee.contacts
  end

end
