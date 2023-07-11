# frozen_string_literal: true

class AddGenderAndCountryToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :gender, null: false, foreign_key: true, index: true
    add_reference :users, :country, null: false, foreign_key: true, index: true
  end
end
