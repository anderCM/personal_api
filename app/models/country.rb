# frozen_string_literal: true
require_relative '../validators/string_validator'

class Country < ApplicationRecord
  include StringValidator

  validates :name, presence: true, uniqueness: true
  validates :phone_code, uniqueness: true, numericality: { minimum: 2, maximum: 3 }
  string_validator :name

  has_many :users
end
