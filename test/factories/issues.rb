# frozen_string_literal: true

FactoryBot.define do
  factory :issue do
    name { Faker::Company.name }
    minimum_quantity { '10' }
    price { '9.99' }
  end
end
