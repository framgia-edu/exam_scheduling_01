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
  validate :image_size_validation
  mount_uploader :image, ImageUploader

  scope :order_by_code, ->{order code: :asc}

  def add_subject subject_exam
    subjects << subject_exam
  end

  def remove_subject subject_exam
    subjects.delete subject_exam
  end

  private

  def image_size_validation
    return unless image.size > Settings.avatar.max_size.megabytes
    errors.add :image, t("avatar_oversize")
  end
end
