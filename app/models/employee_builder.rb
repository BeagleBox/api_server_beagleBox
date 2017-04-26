class EmployeeBuilder

  def initialize admin
    if admin.class.to_s != 'Admin'
      raise StandartError,"Não tem permissão para criar um funcionário"
    end
  end


  def build_employee name, email
      Employee.crete(name:name,email:email)
  end

  def with_contact contacts
    @contacts = contacts
  end




end
