Appointment.destroy_all
Doctor.destroy_all
User.destroy_all
ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

# sampleUsers = User.create([
#     {name: 'user1', password: "123456789", password_confirmation: "123456789", email:"user1@test.com"},
#     {name: 'user2', password: "123456789", password_confirmation: "123456789", email:"user2@test.com"},
#     {name: 'user3', password: "123456789", password_confirmation: "123456789", email:"user3@test.com"},
# ])

# sampleDoctors = Doctor.create([
#     {user: sampleUsers[0], name: 'Ahmet Bozaci', location: 'Turkey', specification: 'Eye specialist', picture: 'https://media.istockphoto.com/photos/portrait-of-happy-african-doctor-at-private-clinic-picture-id1189303662?k=20&m=1189303662&s=612x612&w=0&h=q3P08I8GlYRHIYFoN-h_WBM0PPGzO6ox4XJx8kxJRsc=', price: '100', description: 'friendly and caring'},
#     {user: sampleUsers[0], name: 'Tufoin Nkuo', location: 'Cameroon', specification: 'Heart specialist', picture: 'https://media.istockphoto.com/photos/portrait-of-smiling-black-doctor-making-check-up-for-infant-baby-boy-picture-id1331252840?b=1&k=20&m=1331252840&s=170667a&w=0&h=C4_jms_IJWT50kvyH5uuIAqQBFpsxVIiDRu5YWLIeQI=', price: '380', description: 'lovely and caring'},
#     {user: sampleUsers[0], name: 'Ali Abbani', location: 'Lebanon', specification: 'Plastic surgery', picture: 'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', price: '300', description: 'strict and courageous'}
# ])

# sampleAppointments = Appointment.create([
#     {user: sampleUsers[0], doctor: sampleDoctors[0], time: Time.now, date: '24-02-2022'},
#     {user: sampleUsers[0], doctor: sampleDoctors[0], time: Time.now, date: '27-02-2022'},
#     {user: sampleUsers[0], doctor: sampleDoctors[0], time: Time.now, date: '27-02-2022'},
# ])

@user1 = User.create!(name: 'user1', password: "123456789", password_confirmation: "123456789", email:"user1@test.com")
@user2 = User.create!(name: 'user2', password: "123456789", password_confirmation: "123456789", email:"user2@test.com")
@user3 = User.create!(name: 'user3', password: "123456789", password_confirmation: "123456789", email:"user3@test.com")
@user4 = User.create!(name: 'user4', password: "123456789", password_confirmation: "123456789", email:"user4@test.com")
@user5 = User.create!(name: 'user5', password: "123456789", password_confirmation: "123456789", email:"user5@test.com")
@user6 = User.create!(name: 'user6', password: "123456789", password_confirmation: "123456789", email:"user6@test.com")
@user7 = User.create!(name: 'user7', password: "123456789", password_confirmation: "123456789", email:"user7@test.com")
@user8 = User.create!(name: 'user8', password: "123456789", password_confirmation: "123456789", email:"user8@test.com")
@user9 = User.create!(name: 'user9', password: "123456789", password_confirmation: "123456789", email:"user8@test.com")
@user10 = User.create!(name: 'user10', password: "123456789", password_confirmation: "123456789", email:"user10@test.com")

@doctor1 = Doctor.create!(user: @user1, name: 'Ahmed Bozaci', location: 'Turkey', specification: 'Eye specialist', picture: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', price: '100', description: 'friendly and caring')
@doctor2 = Doctor.create!(user: @user1, name: 'Tufoin Nkuo', location: 'Cameroon', specification: 'Heart specialist', picture: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', price: '300', description: 'friendly and caring')
@doctor3 = Doctor.create!(user: @user1, name: 'Ali Abbani', location: 'Lebanon', specification: 'Plastic surgery', picture: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', price: '300', description: 'friendly and caring')
@doctor4 = Doctor.create!(user: @user1, name: 'Henry Eze', location: 'Nigeria', specification: 'Dentist', picture: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', price: '25', description: 'friendly and caring')
@doctor5 = Doctor.create!(user: @user1, name: 'William Pedro', location: 'Brazil', specification: 'Eye specialist1', picture: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', price: '80', description: 'friendly and caring')
@doctor10 = Doctor.create!(user: @user10, name: 'xi', location: 'Turkey', specification: 'Eye specialist', picture: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', price: '100', description: 'friendly and caring')

@appointment1 = Appointment.create!(user:@user1, doctor: @doctor1, time: Time.now, date: '24-02-2022')
@appointment2 = Appointment.create!(user:@user1, doctor: @doctor2, time: Time.now, date: '25-02-2022')
@appointment3 = Appointment.create!(user:@user1, doctor: @doctor3, time: Time.now, date: '26-02-2022')
@appointment4 = Appointment.create!(user:@user1, doctor: @doctor4, time: Time.now, date: '27-02-2022')
@appointment5 = Appointment.create!(user:@user1, doctor: @doctor5, time: Time.now, date: '28-02-2022')
@appointment6 = Appointment.create!(user:@user1, doctor: @doctor1, time: Time.now, date: '1-03-2022')
@appointment10 = Appointment.create!(user:@user10, doctor: @doctor10, time: Time.now, date: '1-03-2022')
