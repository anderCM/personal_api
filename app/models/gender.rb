# frozen_string_literal: true
require_relative '../validators/string_validator'

class Gender < ApplicationRecord
  include 

  validates :name, presence: true, length: { maximum: 25 }, uniqueness: true
  string_validator :name

  has_many :users
end
