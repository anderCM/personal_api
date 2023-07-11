# frozen_string_literal: true

class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.integer :phone_code, null: false
      t.string :flag_icon, null: false

      t.timestamps
    end
  end
end
