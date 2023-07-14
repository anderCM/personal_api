# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :internal_code, presence: true, uniqueness: true, length: { maximum: 11 }

  validates :email, presence: true, uniqueness: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Invalid email format' }

  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: 'Only letter allowed' },
                         length: { minimum: 3 }

  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: 'Only letter allowed' },
                        length: { minimum: 3 }

  validates :phone, presence: true, numericality: { only_integer: true }

  belongs_to :gender

  belongs_to :country
end
