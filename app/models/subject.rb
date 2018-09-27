class Subject < ApplicationRecord
  has_many :class_students, foreign_key: :subject_id, dependent: :destroy
  has_many :students, through: :class_students, source: :user

  def add_student student
    students << student
  end

  def remove_student student
    students.delete student
  end

  def was_exist? student
    students.include? student
  end
end
