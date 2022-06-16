# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Consultation.destroy_all

doc1 = User.create(email: "docseancooke@gmail.com", password: "10et1020", first_name: "Sean", last_name: "Cooke", is_doctor: true )
puts "Sean Cooke created"
doc2 = User.create(email: "doclawrencematthews@gmail.com", password: "10et1020", first_name: "Lawrence", last_name: "Matthews", is_doctor: true )
puts "Lawrence Matthews created"
patient1 = User.create(email: "patientbernardbrown@gmail.com", password: "10et1020", first_name: "Bernard", last_name: "Brown", is_doctor: false )
puts "Bernard Brown created"


# consultime1 = DateTime.new(2022, 6, 15, 10, 30, 0)
# puts "consultime1 created"

# consul1 = Consultation.create(doctor_id: doc1.id, patient_id: patient1.id, start_time: consultime1, reason: "sickysicksick")
# puts "consul1 created"
