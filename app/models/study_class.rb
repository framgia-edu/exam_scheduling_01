class StudyClass < ApplicationRecord
  belongs_to :subject
  belongs_to :day
  has_and_belongs_to_many :students
end
