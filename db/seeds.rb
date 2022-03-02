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


# @user2 = User.create!(name: 'user2', password: "123456780", email:"user2@test.com")
# @user3 = User.create!(name: 'user3', password: "123456781", email:"user3@test.com")
# @user4 = User.create!(name: 'user4', password: "123456782", email:"user4@test.com")
# @user5 = User.create!(name: 'user5', password: "123456783", email:"user5@test.com")


# @doctor1 = @user1.doctors.create!(name: 'doctor1', location: 'lebanon', specification: 'eye specialist', picture: 'url', price: '25000', description: 'friendly and caring')
# @doctor2 = @user2.doctors.create!(name: 'doctor2', location: 'paris', specification: 'eye specialist', picture: 'url', price: '55000', description: 'friendly and caring')
# @doctor3 = @user3.doctors.create!(name: 'doctor3', location: 'russia', specification: 'eye specialist', picture: 'url', price: '255000', description: 'friendly and caring')

# @appointment1 = Appointment.create!(user:@user1, doctor: @doctor1, time: Time.now, date: '24-02-2022')
# @appointment2 = Appointment.create!(user:@user2, doctor: @doctor2, time: Time.now, date: '24-02-2022')
# @appointment3 = Appointment.create!(user:@user3, doctor: @doctor3, time: Time.now, date: '24-02-2022')



# Appointment.new(user_id:1, doctor_id:1, date, time)


