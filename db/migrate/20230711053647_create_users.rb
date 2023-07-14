# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :internal_cod, limit: 11, null: false
      t.string :email, unique: true, null: false
      t.string :password_digest, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :phone, numeric: true, null: false
      t.date :birth_day
      t.text :bio

      t.timestamps
    end
  end
end
