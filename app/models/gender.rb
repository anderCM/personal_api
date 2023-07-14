# frozen_string_literal: true

class Gender < ApplicationRecord
  validates :name, presence: true, length: { maximum: 25 }, uniqueness: true
  has_many :users
end
