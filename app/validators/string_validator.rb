# frozen_string_literal: true

module StringValidator
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def validate_string(*fields)
      fields.each do |field|
        validates field, format: { with: /\A[a-zA-Z]+\z/, message: 'Only letters allowed' }
      end
    end
  end
end
