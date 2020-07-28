# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :authenticate
  skip_before_action :verify_authenticity_token, only: :create

  # POST /sessions
  # POST /sessions.json
  def create
    self.current_account = Account.find_by(email: auth_hash.info.email)

    respond_to do |format|
      if current_account
        format.html { redirect_to(origin || markets_path, notice: 'Signed in successfully.') }
        format.json { render :show, status: :created, location: @session }
      else
        format.html { redirect_to markets_path, notice: 'Failed to sign in.' }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    self.current_account = nil
    respond_to do |format|
      format.html { redirect_to markets_path, notice: 'Signed off successfully.' }
      format.json { head :no_content }
    end
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end

  def origin
    request.env['omniauth.origin']
  end
end
