class AuthenticateEmployee

  prepend SimpleCommand
  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    JsonWebToken.encode(employee_id: employee.id) if employee
  end

  private

   attr_accessor :employee_email, :password

  def employee
    employee = Employee.find_by(employee_email: @email)
    # if employee && employee.authenticate("12345678")
    #   Thread.current[:current_employee] = employee
     @current_employee = employee
    #   return employee
    # else
    #   errors.add :employee_authentication, 'invalid credentials'
    #   return nil
    # end
  end
end
