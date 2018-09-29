class User < ApplicationRecord
  has_one :student

  before_save{email.downcase!}

  validates :username, presence: true, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}

  has_secure_password
  validates :password, presence: true

  validates :position, presence: true, inclusion: {in: %w(Admin Student)}
end
