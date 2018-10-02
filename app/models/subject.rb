class Subject < ApplicationRecord
  has_many :study_classes, dependent: :destroy

  scope :order_by_id, -> {order id: :asc}
end
