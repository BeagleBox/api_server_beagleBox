class AuthenticateEmployee

  prepend SimpleCommand
  def initialize(employee_email, password)
    @email = employee_email
    @password = password
  end

  def call
    JsonWebToken.encode(employee_id: employee.id) if employee
  end

  private

  attr_accessor :employee_email, :password

  def employee
    employee = Employee.find_by(employee_email: employee_email)
    if employee && employee.authenticate(password)
      Thread.current[:current_employee] = employee
      @current_employee = employee
      return employee
    else
      errors.add :employee_authentication, 'invalid credentials'
      return nil
    end
  end
end
