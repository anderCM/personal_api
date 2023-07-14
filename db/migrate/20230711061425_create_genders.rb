# frozen_string_literal: true

class CreateGenders < ActiveRecord::Migration[7.0]
  def change
    create_table :genders do |t|
      t.string :name, limit: 20, null: false

      t.timestamps
    end
    add_index :genders, :name, unique: true
  end
end
