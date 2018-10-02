class Subject < ApplicationRecord
  has_many :study_classes, dependent: :destroy
end
