# frozen_string_literal: true

class IssuesController < ApplicationController
  skip_before_action :authenticate, only: %i[index]

  # GET /issues
  # GET /issues.json
  def index
    @issues = Issue.all
  end
  def apply
  	@issue = Issue.find(params[:issue_id])
  end

  def application
    params[:current_user].present?  ? @account = Account.find(params[:current_user]) : @account = Account.find(params[:account_id])
    if @account.verified?
      @application = Application.create(account_id: @account.id, issue_id: params[:issue_id], requester_id: current_account.id)
    end
    respond_to do |format|
      format.js
    end
  end
end
