# frozen_string_literal: true

require_relative '../validators/string_validator'

class User < ApplicationRecord
  include StringValidator

  has_secure_password

  validates :internal_code, presence: true, uniqueness: true, length: { maximum: 11 }
  validates :email, presence: true, uniqueness: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Invalid email format' }
  validates :first_name, presence: true, length: { minimum: 3 }
  validates :last_name, presence: true, length: { minimum: 3 }
  validates :phone, presence: true, numericality: { only_integer: true }

  validate_string :first_name, :last_name

  belongs_to :gender
  belongs_to :country
end
