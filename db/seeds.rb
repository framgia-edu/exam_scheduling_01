# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |n|
  name  = Faker::Name.name
  code  = Faker::Code.npi
  email = "example-#{n+1}@railstutorial.org"
  info = "#{name},#{code}"
  password = "password"
  User.create!(code:  code,
               name: name,
               email: email,
               info: info ,
               password_digest: password,
               admin: false
               )
end
20.times do |n|
  name  = "ruby on rails #{n}"
  code  = "IT#{n}"
  Subject.create!(code:  code,
               name: name,
               times_exam: 90
               )
end

10.times do |n|
  name  = "room #{n}"
  code  = "A#{n}"
  Room.create!(code:  code,
               name: name,
               volume: 20,
               overseer_number: 2,
               state: true
               )
end

subjects = Subject.all
users=User.all
subjects.each do |s|
  rand(100).times do |n|
  user = users[rand(100)]
  unless s.was_exist?(user)
  s.add_student user
  end
  end
end
