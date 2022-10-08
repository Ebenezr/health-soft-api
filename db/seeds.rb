# Admin.create(first_name: 'Ebenezar', last_name: 'Bukosia', email: 'admin@admin.com', password: 'admin@admin.com', role: 'admin')


puts 'seeding nurses..'
Nurse.create(first_name: 'Michele', last_name: 'Njeri', email: 'michele@gmail.com', password: 'michele', role: 'nurse')
Nurse.create(first_name: 'Rael', last_name: 'Chep', email: 'rael@gmail.com', password: 'chepyego', role: 'nurse')

puts 'done seedin'