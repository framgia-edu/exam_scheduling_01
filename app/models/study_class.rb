class StudyClass < ApplicationRecord
  belongs_to :subject
  belongs_to :day
  has_and_belongs_to_many :students

  scope :find_by_subject_id, ->(subject_id){where subject_id: subject_id}
end
