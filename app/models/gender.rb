# frozen_string_literal: true

class Gender < ApplicationRecord
  has_many :users
end
