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

  attr_accessor :email, :password

  def employee
    employee = Employee.find_by_email(email)
    if employee && employee.authenticate(password)
      Thread.current[:current_user] = employee
      @current_employee = employee
      return employee
    else
      errors.add :employee_authentication, 'invalid credentials'
      return nil
    end
  end
end
