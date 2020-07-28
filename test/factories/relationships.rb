# frozen_string_literal: true

FactoryBot.define do
  factory :relationship do
    primary_account { nil }
    secondary_account { nil }
  end
end
