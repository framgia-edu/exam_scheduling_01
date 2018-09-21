class Invitation < ApplicationRecord
  belongs_to :student
  belongs_to :schedule
end
