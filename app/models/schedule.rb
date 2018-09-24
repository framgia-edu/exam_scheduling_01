class Schedule < ApplicationRecord
  belongs_to :room
  belongs_to :subject
  has_many :to_invitations, class_name: Invitation.name,
    foreign_key: :schedule_id, dependent: :destroy
  has_many :exam_students, through: :to_invitations, source: :student
end
