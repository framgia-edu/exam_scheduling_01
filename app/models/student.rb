class Student < ApplicationRecord
  has_many :feedbacks
  has_many :class_students
  has_one :oversee
  has_many :invitations_to, class_name: Invitation.name,
    foreign_key: :user_id, dependent: :destroy
  has_many :exam_schedules, through: :invitations_to, source: :schedule
  validates :code, presence: true
  has_secure_password

  scope :order_by_code, ->{order code: :asc}
end
