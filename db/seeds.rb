# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Example User",
  code: "20148888",
  email: "example@railstutorial.org",
  info: "year 1",
  password: "foobar",
  password_confirmation: "foobar")
  
99.times do |n|
  name  = Faker::Name.name
  code  = Faker::Code.npi
  email = "example-#{n+1}@railstutorial.org"
  info = "year 3"
  password = "password"
  User.create!(name: name,
    code: code,
    email: email,
    info: info,
    password: password,
    password_confirmation: password)
end

50.times do |n|
  name  = Faker::Name.name
  code  = Faker::Code.npi
  capacity = 50
  exam_during = 60
  Subject.create!(name: name,
    code: code,
    name: name,
    capacity: capacity,
    exam_during: exam_during)
end
