# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_729_033_250) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'accounts', force: :cascade do |t|
    t.string 'name', null: false
    t.boolean 'verified', default: false, null: false
    t.string 'email', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_accounts_on_email', unique: true
  end

  create_table 'issues', force: :cascade do |t|
    t.string 'name', null: false
    t.decimal 'minimum_quantity', null: false
    t.decimal 'price', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'relationships', force: :cascade do |t|
    t.bigint 'primary_account_id', null: false
    t.bigint 'secondary_account_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[primary_account_id secondary_account_id], name: 'index_relationships_on_account_ids_unique', unique: true
    t.index ['primary_account_id'], name: 'index_relationships_on_primary_account_id'
    t.index ['secondary_account_id'], name: 'index_relationships_on_secondary_account_id'
  end

  add_foreign_key 'relationships', 'accounts', column: 'primary_account_id'
  add_foreign_key 'relationships', 'accounts', column: 'secondary_account_id'
end
