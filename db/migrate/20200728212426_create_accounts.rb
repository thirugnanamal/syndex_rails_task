# frozen_string_literal: true

class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name, null: false
      t.boolean :verified, null: false, default: false
      t.string :email, null: false

      t.timestamps
    end

    add_index :accounts, :email, unique: true
  end
end
