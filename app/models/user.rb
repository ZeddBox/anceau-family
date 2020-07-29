class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true, length: {maximum: 30}
  validates :password, presence: true,
  confirmation: true,
  length: {within: 6..40},
  on: :create
  validates :password, confirmation: true,
  length: {within: 6..40},
  allow_blank: true,
  on: :update

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  before_validation :downcase_email
  # after_create :welcome_send

  has_one_attached :profile_pic

  extend FriendlyId
  friendly_id :name, use: :slugged

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  def should_generate_new_friendly_id?
    slug.blank? || name_changed?
  end

  def profile_pic_url
    if self.profile_pic.attachment
      self.profile_pic.attachment.service_url
    end
  end

  private

  def downcase_email
    self.email = email.downcase if email.present?
  end
end
