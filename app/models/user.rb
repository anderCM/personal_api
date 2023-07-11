# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  belongs_to :gender
  belongs_to :country
end
