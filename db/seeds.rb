# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(name:'João', registration:150132042, email:'joaohenrique.p.almeida@gmail.com',password:"12345678")
Departament.create(name:"Secretaria")
Departament.create(name:"CPD")
Employee.create(name:'João', registration:150132042, email:'joaohenrique.p.almeida@gmail.com',password:"12345678", departament_id:1)
Employee.create(name:'Humberto', registration:261243921, email:'humberto@gmail.com',password:"12345678", departament_id:2)
Employee.create(name:'Elaine', registration:561243921, email:'elaine@gmail.com',password:"12345678", departament_id:1)


employee1 = Employee.create(name:'Yeltisin', registration:561243921, email:'yeltsin@gmail.com',password:"12345678", departament_id:1)
employee2 = Employee.create(name:'Gabriela', registration:261243921, email:'humberto@gmail.com',password:"12345678", departament_id:2)

item1 = Item.create(name: "Data Show")
item2 = Item.create(name: "Cabo de Energia")

hotSpot1 = Hotspot.create(name: "Secretaria", localization: "Predio 1")
hotSpot2 = Hotspot.create(name: "Sala 4", localization: "Predio 2")

Route.create(name: "Route 1", source_id: hotSpot1.id, destination_id: hotSpot2.id)

delivery1 = Delivery.create(status: "Em Trânsito", 
							sender_id: employee1.id, 
							recipient_id: employee2.id, 
							source_id: hotSpot1.id, 
							destination_id: hotSpot2.id)
delivery1.items << item1
delivery1.items << item2
