# frozen_string_literal: true

class Relationship < ApplicationRecord
  belongs_to :primary_account, class_name: 'Account'
  belongs_to :secondary_account, class_name: 'Account'
end
