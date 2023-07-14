# frozen_string_literal: true

require_relative '../validators/string_validator'

class Country < ApplicationRecord
  include StringValidator

  validates :name, presence: true, uniqueness: true
  validates :phone_code, presence: true, uniqueness: true, numericality: true, length: { minimum: 2, maximum: 3 }
  validates :flag_icon, presence: true
  validate_string :name, :flag_icon

  has_many :users
end
