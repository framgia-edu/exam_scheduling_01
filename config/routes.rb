Rails.application.routes.draw do
  root "login#login_form"
  get "admin/index"
  get "subject/subject_list"
  get "class/class_list"
  get "student/student_list"
  get "room/room_list"
  get "date/date_list"
end
