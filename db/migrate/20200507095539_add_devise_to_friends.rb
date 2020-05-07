# frozen_string_literal: true

class AddDeviseToFriends < ActiveRecord::Migration[6.0]
  def self.up
    change_table :friends do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      t.datetime :remember_created_at

    end

    add_index :friends, :email,                unique: true
    add_index :friends, :reset_password_token, unique: true

  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
