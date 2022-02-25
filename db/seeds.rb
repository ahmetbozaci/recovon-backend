# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@user1 = User.create!(name: 'user1')
@user2 = User.create!(name: 'user2')
@user3 = User.create!(name: 'user3')
@user4 = User.create!(name: 'user4')
@user5 = User.create!(name: 'user5')


@doctor1 = @user1.doctors.create!(name: 'doctor1', location: 'lebanon', specification: 'eye specialist', picture: 'url', price: '25000', description: 'friendly and caring')
@doctor2 = @user2.doctors.create!(name: 'doctor2', location: 'paris', specification: 'eye specialist', picture: 'url', price: '55000', description: 'friendly and caring')
@doctor3 = @user3.doctors.create!(name: 'doctor3', location: 'russia', specification: 'eye specialist', picture: 'url', price: '255000', description: 'friendly and caring')

