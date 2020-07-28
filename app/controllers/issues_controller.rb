# frozen_string_literal: true

class IssuesController < ApplicationController
  skip_before_action :authenticate, only: %i[index]

  # GET /issues
  # GET /issues.json
  def index
    @issues = Issue.all
  end
end
