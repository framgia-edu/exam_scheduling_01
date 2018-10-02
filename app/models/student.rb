class Student < ApplicationRecord
  has_and_belongs_to_many :study_classes
  has_and_belongs_to_many :groups
end
