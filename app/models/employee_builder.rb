class EmployeeBuilder

  def initialize admin
    if admin.class.to_s != 'Admin'
      raise StandartError,"Não tem permissão para criar um funcionário"
    end
  end


  def build_employee employee_name, employee_email
      Employee.crete(employee_name:employee_name,employee_email:employee_email)
  end

  def with_contact contacts
    @contacts = contacts
  end




end
