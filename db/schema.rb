# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_09_21_093616) do

  create_table "class_students", force: :cascade do |t|
    t.string "name"
    t.string "subject_code"
    t.string "student_code"
    t.boolean "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_code"], name: "index_class_students_on_student_code"
    t.index ["subject_code", "student_code"], name: "index_class_students_on_subject_code_and_student_code", unique: true
    t.index ["subject_code"], name: "index_class_students_on_subject_code"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "message"
    t.string "reply"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "created_at"], name: "index_feedbacks_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_id"], name: "index_invitations_on_schedule_id"
    t.index ["user_id", "schedule_id"], name: "index_invitations_on_user_id_and_schedule_id", unique: true
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "oversees", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_oversees_on_code"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "volume"
    t.integer "number_overseer"
    t.boolean "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "class_name"
    t.string "subject_code"
    t.string "subject_name"
    t.integer "room_code"
    t.datetime "day"
    t.integer "session"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_code"], name: "index_schedules_on_room_code"
    t.index ["subject_code"], name: "index_schedules_on_subject_code"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "students_limit"
    t.integer "times_limit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "email"
    t.string "info"
    t.string "password_digest"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
