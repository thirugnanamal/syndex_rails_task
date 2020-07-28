# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = Account.create!([
                          { name: 'Luke', email: 'luke@rebels.com', verified: true },
                          { name: 'Han', email: 'han@rebels.com', verified: true },
                          { name: 'Leia', email: 'leia@rebels.com' },
                          { name: 'Darth', email: 'darth@empire.com' }
                        ])
Relationship.create!([
                       { primary_account: users[1], secondary_account: users[0] },
                       { primary_account: users[2], secondary_account: users[0] },
                       { primary_account: users[1], secondary_account: users[2] }
                     ])
Issue.create!([
                { name: 'Alderaan Farms', minimum_quantity: 10, price: 1000 },
                { name: 'Mos Eisley Towers', minimum_quantity: 10, price: 1000 }
              ])
