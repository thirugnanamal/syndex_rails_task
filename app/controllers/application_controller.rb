# frozen_string_literal: true

class ApplicationController < ActionController::Base
  class NotAuthenticatedError < StandardError; end

  rescue_from NotAuthenticatedError, with: :deny_access

  before_action :authenticate

  helper_method :current_account, :signed_in?

  def authenticate
    raise NotAuthenticatedError unless signed_in?
  end

  def signed_in?
    current_account.present?
  end

  def current_account=(account)
    session[:current_account_id] = account&.id
    @current_account = account
  end

  def current_account
    return if session[:current_account_id].blank?

    @current_account ||= Account.find(session[:current_account_id])
  end

  private

  def deny_access
    provider = 'developer'
    params = { 'origin' => request.original_fullpath }
    redirect_to "/auth/#{provider}?#{params.to_param}"
  end
end
