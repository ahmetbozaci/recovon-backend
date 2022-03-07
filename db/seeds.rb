Appointment.destroy_all
Doctor.destroy_all
User.destroy_all
ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

sampleUsers = User.create([
    {name: 'user1', password: "123456789", password_confirmation: "123456789", email:"user1@test.com"},
    {name: 'user2', password: "123456789", password_confirmation: "123456789", email:"user2@test.com"},
    {name: 'user3', password: "123456789", password_confirmation: "123456789", email:"user3@test.com"},
])

sampleDoctors = Doctor.create([
    {user: @user1, name: 'Ahmed Bozaci', location: 'Turkey', specification: 'Eye specialist', picture: 'https://media.istockphoto.com/photos/portrait-of-happy-african-doctor-at-private-clinic-picture-id1189303662?k=20&m=1189303662&s=612x612&w=0&h=q3P08I8GlYRHIYFoN-h_WBM0PPGzO6ox4XJx8kxJRsc=', price: '100', description: 'friendly and caring'},
    {user: @user1, name: 'Tufoin Nkuo', location: 'Cameroon', specification: 'Heart specialist', picture: 'https://media.istockphoto.com/photos/portrait-of-smiling-black-doctor-making-check-up-for-infant-baby-boy-picture-id1331252840?b=1&k=20&m=1331252840&s=170667a&w=0&h=C4_jms_IJWT50kvyH5uuIAqQBFpsxVIiDRu5YWLIeQI=', price: '380', description: 'lovely and caring'},
    {user: @user1, name: 'Ali Abbani', location: 'Lebanon', specification: 'Plastic surgery', picture: 'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', price: '300', description: 'strict and courageous'}
])

sampleAppointments = Appointment.create([
    {user:@user1, doctor: @doctor1, time: Time.now, date: '24-02-2022'},
    {user:@user1, doctor: @doctor2, time: Time.now, date: '27-02-2022'},
    {user:@user1, doctor: @doctor2, time: Time.now, date: '27-02-2022'},
])








