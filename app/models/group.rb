class Group < ApplicationRecord
  belongs_to :study_class
  belongs_to :room
  has_and_belongs_to_many :students
end
