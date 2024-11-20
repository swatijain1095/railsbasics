class User < ApplicationRecord
  has_secure_password

  ROLES = %w[admin moderator regular].freeze

  validates :name, presence: true, length: { minimum: 5, maximum: 15 }
  validates :password, presence: true, confirmation: true, length: { minimum: 5, maximum: 15 }, unless: -> { password.blank? }
  validates :password_confirmation, presence: true, length: { minimum: 5, maximum: 15 }, unless: -> { password.blank? }
  validates :gender, presence: true
  validates :birthdate, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true, uniqueness: true, numericality: true, length: { minimum: 10, maximum: 13 }
  validates :postalcode, presence: true, length: { minimum: 4, maximum: 7 }
  validates :websiteurl, presence: true, format: { with: /\Ahttps?:\/\/[a-zA-Z0-9\-]+(\.[a-zA-Z0-9\-]+)+(:[0-9]+)?(\/.*)?\z/, message: "must be a valid URL" }
  validates :termsandcondition, acceptance: { message: "must be accepted" }
  validates :role, presence: true, inclusion: { in: ROLES, message: "is not a valid role" }
end
