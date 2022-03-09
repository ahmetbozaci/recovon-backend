# Auto regulate ids
Appointment.destroy_all
Doctor.destroy_all
User.destroy_all
ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

@user1 = User.create!(name: 'user1', password: "123456789", password_confirmation: "123456789", email:"user1@test.com")

@doctor1 = Doctor.create!(user: @user1, name: 'Ahmet Bozaci', location: 'Turkey', specification: 'Eye specialist', picture: 'https://media.istockphoto.com/photos/portrait-of-male-doctor-in-white-coat-and-stethoscope-standing-in-picture-id1327024466?k=20&m=1327024466&s=612x612&w=0&h=TDbIUqY-iPy1EQnOJvXgQKrTMrEAH0ekqNoWY8jei1g=', price: '100', description: 'active listener and ask open-ended questions')
@doctor2 = Doctor.create!(user: @user1, name: 'Tufoin Nkuo', location: 'Cameroon', specification: 'Heart specialist', picture: 'https://media.istockphoto.com/photos/doctors-tools-get-more-advanced-by-the-day-picture-id1300516764?k=20&m=1300516764&s=612x612&w=0&h=xhT-plNpcmdl96Vmu_Dv1ZZiEn9IW-Ti9b0UvbUnapk=', price: '180', description: 'Honest but also offer hope, even when a situation is difficult')
@doctor3 = Doctor.create!(user: @user1, name: 'Ali Abbani', location: 'Lebanon', specification: 'Plastic surgery', picture: 'https://cdn.pixabay.com/photo/2021/02/09/06/44/doctor-5997500__340.jpg', price: '95', description: 'willing to go the extra mile for his patients')
@doctor4 = Doctor.create!(user: @user1, name: 'Henry Eze', location: 'Nigeria', specification: 'Dentist', picture: 'https://media.istockphoto.com/photos/if-you-need-me-just-call-me-picture-id1288813313?k=20&m=1288813313&s=612x612&w=0&h=NiAjImsLoy5_ssvIjtMdXmG5Hqmm8uYdIpNhfqfuvHE=', price: '80', description: 'do whatever it takes to help meet his patients’ needs')
@doctor5 = Doctor.create!(user: @user1, name: 'William Pedro', location: 'Brazil', specification: 'geneticist ', picture: 'https://image.shutterstock.com/image-photo/cheerful-mature-doctor-posing-smiling-260nw-1384243295.jpg', price: '110', description: 'friendly and caring')
@doctor6 = Doctor.create!(user: @user1, name: 'Benis Naah', location: 'France', specification: 'Dermatologists', picture: 'https://images.pexels.com/photos/5452201/pexels-photo-5452201.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', price: '115', description: 'vigilant about following up on any tests that are done')

@appointment1 = Appointment.create!(user:@user1, doctor: @doctor1, time: Time.now, date: '24-02-2022')
@appointment2 = Appointment.create!(user:@user1, doctor: @doctor2, time: Time.now, date: '25-02-2022')
@appointment3 = Appointment.create!(user:@user1, doctor: @doctor3, time: Time.now, date: '26-02-2022')
@appointment4 = Appointment.create!(user:@user1, doctor: @doctor4, time: Time.now, date: '27-02-2022')
@appointment5 = Appointment.create!(user:@user1, doctor: @doctor5, time: Time.now, date: '28-02-2022')
@appointment6 = Appointment.create!(user:@user1, doctor: @doctor1, time: Time.now, date: '1-03-2022')
@appointment7 = Appointment.create!(user:@user1, doctor: @doctor6, time: Time.now, date: '1-03-2022')

