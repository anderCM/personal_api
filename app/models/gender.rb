# frozen_string_literal: true

require_relative '../validators/string_validator'

class Gender < ApplicationRecord
  include StringValidator

  validates :name, presence: true, length: { maximum: 25 }, uniqueness: true
  validate_string :name

  has_many :users
end
