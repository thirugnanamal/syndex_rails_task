# frozen_string_literal: true

class Account < ApplicationRecord
  has_many :roles,
           class_name: 'Relationship', foreign_key: :secondary_account_id,
           inverse_of: :secondary_account, dependent: :destroy
  has_many :officers,
           class_name: 'Relationship', foreign_key: :primary_account_id,
           inverse_of: :primary_account, dependent: :destroy

  def related_accounts
    @related_accounts ||= Account.where(id: roles.select(:primary_account_id)).order(:name)
  end

  def visible_accounts
    @visible_accounts ||= related_accounts.or(id: id).order(:name)
  end
end
