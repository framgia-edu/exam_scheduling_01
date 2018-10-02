class Subject < ApplicationRecord
  has_many :study_classes, dependent: :destroy

  validates :subject_code, presence: true, uniqueness: true
  validates :subject_name, presence: true, uniqueness: true

  scope :order_by_id, ->{order id: :asc}
end
