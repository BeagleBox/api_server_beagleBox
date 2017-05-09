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
Employee.create(name:'Yeltisin', registration:561243921, email:'yeltsin@gmail.com',password:"12345678", departament_id:1)
Employee.create(name:'Gabriela', registration:261243921, email:'humberto@gmail.com',password:"12345678", departament_id:2)
