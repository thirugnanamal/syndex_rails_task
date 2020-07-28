# frozen_string_literal: true

FactoryBot.define do
  factory :account do
    name { Faker::Name.name }
    verified { false }
    email { Faker::Internet.email(name: name) }
  end
end
