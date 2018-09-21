class Subject < ApplicationRecord
  has_many :schedules
  has_many :class_students
  validates :code, presence: true
end
