# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: "AD01", 
  email: "lop12a1trinhvantan@gmail.com",
  password: "123456",
  position: "Admin"
)

Subject.create!(subject_code: "IT01",
  subject_name: "Mon 01" 
)

Day.create!(no_day: "1",
  day: "2018-10-1"
)

StudyClass.create!(
 subject_id: "1",
 day_id: "1",
 class_code: "1001",
 case: " "
)
