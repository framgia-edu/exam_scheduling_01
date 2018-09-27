class Schedule < ApplicationRecord
  has_many :invitations, foreign_key: :schedule_id, dependent: :destroy
  has_many :students, through: :invitations, source: :user
end
