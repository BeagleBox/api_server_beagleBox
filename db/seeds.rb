# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

departament1 = Departament.create(departament_name:"Secretaria")
departament2 = Departament.create(departament_name:"Biblioteca")
Departament.create(departament_name:"Enfermaria")
Departament.create(departament_name:"Auditório")
Departament.create(departament_name:"CPD")

Employee.create(employee_name:'João', employee_registration:150132042,
  employee_email:'joaohenrique@gmail.com', password:"12345678", password_confirmation:"12345678",
  departament_id:1, is_admin:false)
Employee.create(employee_name:'Humberto', employee_registration:261243921,
  employee_email:'humberto@gmail.com', password:"12345678", password_confirmation:"12345678",
  departament_id:2, is_admin:false)
Employee.create(employee_name:'Elaine', employee_registration:561243921,
  employee_email:'elaine@gmail.com', password:"12345678", password_confirmation:"12345678",
  departament_id:3, is_admin:true)


employee1 = Employee.create(employee_name:'Yeltsin', employee_registration:561243921,
  employee_email:'yeltsin@gmail.com', password:"12345678", password_confirmation:"12345678",
  departament_id:4, is_admin:false)
employee2 = Employee.create(employee_name:'Gabriela', employee_registration:261243921,
  employee_email:'humberto@gmail.com', password:"12345678", password_confirmation:"12345678",
  departament_id:5, is_admin:false)

item1 = Item.create(name: "Data Show")
item2 = Item.create(name: "Cabo de Energia")

# hotSpot1 = Hotspot.create(name: "Secretaria", localization: "Predio 1")
# hotSpot2 = Hotspot.create(name: "Sala 4", localization: "Predio 2")

Route.create(name: "Route 1", source_id: departament1.id, destination_id: departament2.id)

delivery1 = Delivery.create(status: "Em Trânsito",
							sender_id: employee1.id,
							recipient_id: employee2.id,
							source_id: departament1.id,
							destination_id: departament2.id)

