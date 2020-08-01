# frozen_string_literal: true

class Issue < ApplicationRecord
	has_many :applications
  has_many :accounts, through: :applications
end
