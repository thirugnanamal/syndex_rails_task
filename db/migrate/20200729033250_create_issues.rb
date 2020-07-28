# frozen_string_literal: true

class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.string :name, null: false
      t.decimal :minimum_quantity, null: false
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
