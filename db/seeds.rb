# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin.create(admin_name:'João', admin_registration:150132042, admin_email:'joaohenrique.p.almeida@gmail.com',password_digest:"12345678")
Departament.create(departament_name:"Secretaria")
Departament.create(departament_name:"CPD")
Employee.create(employee_name:'João', employee_registration:150132042, employee_email:'joaohenrique.p.almeida@gmail.com',password:"12345678", is_admin: false, departament_id:1)
Employee.create(employee_name:'Humberto', employee_registration:261243921, employee_email:'humberto@gmail.com',password:"12345678", is_admin: false, departament_id:2)
Employee.create(employee_name:'Elaine', employee_registration:561243921, employee_email:'elaine@gmail.com',password:"12345678", is_admin: false, departament_id:1)
Employee.create(employee_name:'Yeltisin', employee_registration:561243921, employee_email:'yeltsin@gmail.com',password:"12345678", is_admin: false, departament_id:1)
Employee.create(employee_name:'Gabriela', employee_registration:261243921, employee_email:'humberto@gmail.com',password:"12345678", is_admin: false, departament_id:2)
Employee.create(employee_name:'Euler', employee_registration:261243921, employee_email:'euler@mail.com',password:"12345678", departament_id:2)
