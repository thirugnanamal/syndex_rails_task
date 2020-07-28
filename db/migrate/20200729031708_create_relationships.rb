# frozen_string_literal: true

class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.references :primary_account, null: false, foreign_key: { to_table: :accounts }
      t.references :secondary_account, null: false, foreign_key: { to_table: :accounts }

      t.timestamps
    end

    add_index :relationships, %i[primary_account_id secondary_account_id], unique: true, name: 'index_relationships_on_account_ids_unique'
  end
end
