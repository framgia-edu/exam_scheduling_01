class User < ApplicationRecord
  has_one :oversee
  has_many :feedbacks

  has_many :class_students, foreign_key: :user_id, dependent: :destroy
  has_many :subjects, through: :class_students, source: :subject

  has_many :invitations, foreign_key: :user_id, dependent: :destroy
  has_many :schedules, through: :invitations, source: :schedule

  def add_subject subject_exam
    subjects << subject_exam
  end

  def remove_subject subject_exam
    subjects.delete subject_exam
  end
  has_secure_password
  scope :order_by_code, ->{order code: :asc}
end
