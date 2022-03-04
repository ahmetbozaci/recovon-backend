Appointment.destroy_all
Doctor.destroy_all
User.destroy_all
ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end


@user1 = User.create!(name: 'user1', password: "123456789", password_confirmation: "123456789", email:"user1@test.com")
@user2 = User.create!(name: 'user2', password: "123456789", password_confirmation: "123456789", email:"user2@test.com")
@user3 = User.create!(name: 'user3', password: "123456789", password_confirmation: "123456789", email:"user3@test.com")
@user4 = User.create!(name: 'user4', password: "123456789", password_confirmation: "123456789", email:"user4@test.com")
@user5 = User.create!(name: 'user5', password: "123456789", password_confirmation: "123456789", email:"user5@test.com")
@user6 = User.create!(name: 'user6', password: "123456789", password_confirmation: "123456789", email:"user6@test.com")
@user7 = User.create!(name: 'user7', password: "123456789", password_confirmation: "123456789", email:"user7@test.com")
@user8 = User.create!(name: 'user8', password: "123456789", password_confirmation: "123456789", email:"user8@test.com")
@user9 = User.create!(name: 'user9', password: "123456789", password_confirmation: "123456789", email:"user8@test.com")


# @user2 = User.create!(name: 'user2', password: "123456780", email:"user2@test.com")
# @user3 = User.create!(name: 'user3', password: "123456781", email:"user3@test.com")
# @user4 = User.create!(name: 'user4', password: "123456782", email:"user4@test.com")
# @user5 = User.create!(name: 'user5', password: "123456783", email:"user5@test.com")


@doctor1 = Doctor.create!(user: @user1, name: 'Ahmed Bozaci', location: 'Turkey', specification: 'Eye specialist', picture: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', price: '100', description: 'friendly and caring')
@doctor2 = Doctor.create!(user: @user1, name: 'Tufoin Nkuo', location: 'Cameroon', specification: 'Heart specialist', picture: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', price: '300', description: 'friendly and caring')
@doctor3 = Doctor.create!(user: @user1, name: 'Ali Abbani', location: 'Lebanon', specification: 'Plastic surgery', picture: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', price: '300', description: 'friendly and caring')
@doctor4 = Doctor.create!(user: @user1, name: 'Henry Eze', location: 'Nigeria', specification: 'Dentist', picture: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', price: '25', description: 'friendly and caring')
@doctor5 = Doctor.create!(user: @user1, name: 'William Pedro', location: 'Brazil', specification: 'Eye specialist1', picture: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', price: '80', description: 'friendly and caring')

@appointment1 = Appointment.create!(user:@user1, doctor: @doctor1, time: Time.now, date: '24-02-2022')
@appointment2 = Appointment.create!(user:@user1, doctor: @doctor2, time: Time.now, date: '25-02-2022')
@appointment3 = Appointment.create!(user:@user1, doctor: @doctor3, time: Time.now, date: '26-02-2022')
@appointment4 = Appointment.create!(user:@user1, doctor: @doctor4, time: Time.now, date: '27-02-2022')
@appointment5 = Appointment.create!(user:@user1, doctor: @doctor5, time: Time.now, date: '28-02-2022')
@appointment6 = Appointment.create!(user:@user1, doctor: @doctor1, time: Time.now, date: '1-03-2022')




# Appointment.new(user_id:1, doctor_id:1, date, time)


