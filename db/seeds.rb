# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Consultation.destroy_all

doc1 = User.create(email: "doc1@email.com", password: "123123", first_name: "John", last_name: "McJohn", is_doctor: true )
puts "doc1 created"
patient1 = User.create(email: "patient1@email.com", password: "123123", first_name: "Patrick", last_name: "O'Patrick", is_doctor: false )
puts "patient1 created"


consultime1 = DateTime.new(2022, 6, 15, 10, 30, 0)
puts "consultime1 created"

consul1 = Consultation.create(doctor_id: doc1.id, patient_id: patient1.id, start_time: consultime1, reason: "sickysicksick")
puts "consul1 created"
