puts 'seeding admins..'
admin = Admin.create(first_name: 'Ebenezar', last_name: 'Bukosia', email: 'admin@admin.com', password: '"admin@admin.com"', role_cd: 'admin',phone:78458546,designation:'Admin')


puts 'seeding nurses..'
njeri =Nurse.create(first_name: 'Michele', last_name: 'Njeri', email: 'michele@gmail.com', password: 'nurse@nurse.com', role_cd: 'nurse', phone:78457546,designation:'Reception')
chep =Nurse.create(first_name: 'Rael', last_name: 'Chep', email: 'chep@gmail.com', password: 'chep@gmail.com', role_cd: 'nurse', phone:78458546,designation:'Intern')
leah =Nurse.create(first_name: 'Leah', last_name: 'Karambu', email: 'leah@gmail.com', password: 'nurse@nurse.com', role_cd: 'nurse', phone:78451546,designation:'Reception')
aled =Nurse.create(first_name: 'Aled', last_name: 'Kingo', email: 'maxwel@gmail.com', password: 'nurse@nurse.com', role_cd: 'nurse', phone:78451546,designation:'Reception')
john =Nurse.create(first_name: 'John', last_name: 'Brian', email: 'brian@gmail.com', password: 'nurse@nurse.com', role_cd: 'nurse', phone:78451546,designation:'Lab Tech')

puts 'seeding doctors..'
manu =Doctor.create(first_name: 'Emanuel', last_name: 'Baraka', email: 'emmanuel@gmail.com', password: 'doctor@doctor.com', role_cd: 'doctor', phone:78457546,designation:'Surgion')
doc =Doctor.create(first_name: 'Dr', last_name: "King'ori", email: 'kingori@gmail.com', password: 'doctor@doctor.com', role_cd: 'doctor', phone:78458546,designation:'Dentist')
kim =Doctor.create(first_name: 'Jonstone', last_name: 'Kimtai', email: 'kimatai@gmail.com', password: 'doctor@doctor.com', role_cd: 'doctor', phone:78451546,designation:'Clinical Officer')
max =Doctor.create(first_name: 'Maxwel', last_name: 'Wanjala', email: 'maax@gmail.com', password: 'doctor@doctor.com', role_cd: 'doctor', phone:78451546,designation:'Intern')
mumo =Doctor.create(first_name: 'Paul', last_name: 'Mumo', email: 'mumo@gmail.com', password: 'doctor@doctor.com', role_cd: 'doctor', phone:78451546,designation:'Lab Tech')

puts 'seeding patients...'
one = Patient.create(  national_id: 3853466, first_name: "Alex", last_name: "Ndong'u", gender: "Male", dob: "1985-03-24", marital_status: "Maried", phone: 778459615, email: "alex@mail.com", address: "Jericho",county: "Nairobi", estate: "Social Hall")
two = Patient.create(  national_id: 3854566, first_name: "Colins", last_name: "Nyaboro", gender: "Male", dob: "1999-11-24", marital_status: "Single", phone: 778459615, email: "colo@gail.com", address: "Buruburu",county: "Nairobi", estate: "Phase 1")
there = Patient.create(  national_id: 3846576, first_name: "Japheth", last_name: "Mald", gender: "Male", dob: "2002-03-24", marital_status: "Single", phone: 778455465, email: "japhe@mail.com", address: "Jericho",county: "Nairobi", estate: "Salem")
four = Patient.create(  national_id: 3853084, first_name: "Mercy", last_name: "Njeri", gender: "Female", dob: "2001-03-14", marital_status: "Single", phone:774569615, email: "mercy@yahoo.com", address: "Jericho",county: "Nairobi", estate: "Odinga")
five = Patient.create(  national_id: 3846466, first_name: "Joy", last_name: "Ngei", gender: "Female", dob: "1988-03-04", marital_status: "Single", phone: 784234415, email: "joyce@mail.com", address: "Ngong",county: "Nairobi", estate: "Bree")
six = Patient.create(  national_id: 3846546, first_name: "Alice", last_name: "Onyango", gender: "Female", dob: "1965-01-24", marital_status: "Maried", phone: 778423515, email: "alice@hotmail.com", address: "Rongai",county: "Nairobi", estate: "Musst")
seven = Patient.create(  national_id: 3538641, first_name: "Olive", last_name: "bunei", gender: "Female", dob: "1985-05-24", marital_status: "Maried", phone: 778458665, email: "olive@mail.com", address: "Thika",county: "Nairobi", estate: "Dawa")

puts 'seeding patient vitals...'
er = PatientVital.create( patient_id:1, bp_systolic:120, bp_diastolic:80, temperature:37, notes: "Patient has normal temperature")
erx = PatientVital.create( patient_id:2, bp_systolic:120, bp_diastolic:80, temperature:37, notes: "Patient has normal temperature")
exr = PatientVital.create( patient_id:3, bp_systolic:112, bp_diastolic:80, temperature:36.5, notes: "Patient high temps")
ber = PatientVital.create( patient_id:4, bp_systolic:110, bp_diastolic:80, temperature:36, notes: "")
enr = PatientVital.create( patient_id:5, bp_systolic:122, bp_diastolic:70, temperature:36, notes: "normal readings")
gner = PatientVital.create( patient_id:6, bp_systolic:126, bp_diastolic:90, temperature:37.2, notes: "high pressure")
egnr = PatientVital.create( patient_id:7, bp_systolic:120, bp_diastolic:88, temperature:37, notes: "Patient has high temperature")


puts 'seeding appointments...'

sdf= Appointment.create(patient_type: "out-patient", serial_no: 1, appointment_date: "2022-10-11",appointment_time: "2000-01-01T12:00:00.000Z",doctor_id: 1, patient_id: 7,nurse_id: 1)
szzdf= Appointment.create(patient_type: "out-patient", serial_no: 2, appointment_date: "2022-10-21",appointment_time: "2000-01-01T12:00:00.000Z",doctor_id: 2, patient_id: 6,nurse_id: 2)
ssdvdf= Appointment.create(patient_type: "out-patient", serial_no: 3, appointment_date: "2022-10-16",appointment_time: "2000-01-01T12:00:00.000Z",doctor_id: 3, patient_id: 5,nurse_id: 2)
sddvf= Appointment.create(patient_type: "out-patient", serial_no: 4, appointment_date: "2022-10-15",appointment_time: "2000-01-01T12:00:00.000Z",doctor_id: 4, patient_id: 4,nurse_id: 3)
ssvdf= Appointment.create(patient_type: "out-patient", serial_no: 5, appointment_date: "2022-10-15",appointment_time: "2000-01-01T12:00:00.000Z",doctor_id: 5, patient_id: 3,nurse_id: 4)
sdzcf= Appointment.create(patient_type: "out-patient", serial_no: 6, appointment_date: "2022-10-19",appointment_time: "2000-01-01T12:00:00.000Z",doctor_id: 5, patient_id: 2,nurse_id: 1)

puts 'seeding patient checkup...'
sds = Checkup.create( doctor_id:2, patient_id:1,symptoms:"Headache, Backpains", diagnosis:"Malaria", advice:"Avoid alcohol", checkup_date:"2022-10-06", next_visit:"2022-10-8", hpi:"Headache 2/7", comment: "",visit_id: 1000)
sds = Checkup.create( doctor_id:1, patient_id:2,symptoms:"Cough", diagnosis:"Malaria", advice:"Avoid alcohol", checkup_date:"2022-10-06", next_visit:"2022-10-8", hpi:"Headache 2/7", comment: "patient to be admited",visit_id: 1001)
sds = Checkup.create( doctor_id:3, patient_id:3,symptoms:"Tooth ache", diagnosis:"Thooth decay", advice:"Thooth filling", checkup_date:"2022-10-12", next_visit:"2022-10-8", hpi:"tooth sensitivity 2/7", comment: "",visit_id: 1002)
sds = Checkup.create( doctor_id:4, patient_id:4,symptoms:"Morning sicknes, vomiting", diagnosis:"Pregnant", advice:"Avoid alcohol", checkup_date:"2022-10-11", next_visit:"2022-10-21", hpi:"Headache 2/7", comment: "patient to be scanned",visit_id: 1003)
sds = Checkup.create( doctor_id:2, patient_id:5,symptoms:"Headache, Backpains", diagnosis:"", advice:"", checkup_date:"2022-10-06", next_visit:"2022-10-8", hpi:"Headache 2/7", comment: "Return after two weeks",visit_id: 1004)



puts 'done seeding'