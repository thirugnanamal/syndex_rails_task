# frozen_string_literal: true

require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account = create(:account)
  end

  test 'should get index' do
    sign_in @account

    get accounts_url

    assert_response :success
  end

  test 'should get new' do
    get new_account_url

    assert_response :success
  end

  test 'should create account' do
    account = build(:account)

    assert_difference('Account.count') do
      post accounts_url, params: { account: { email: account.email, name: account.name, verified: @account.verified } }
    end

    assert_redirected_to account_url(Account.last)
  end

  test 'should show account' do
    sign_in @account

    get account_url(@account)

    assert_response :success
  end

  test 'should get edit' do
    sign_in @account

    get edit_account_url(@account)

    assert_response :success
  end

  test 'should update account' do
    sign_in @account

    patch account_url(@account), params: { account: { email: @account.email, name: @account.name, verified: @account.verified } }

    assert_redirected_to account_url(@account)
  end

  test 'should destroy account' do
    sign_in @account

    assert_difference('Account.count', -1) do
      delete account_url(@account)
    end

    assert_redirected_to accounts_url
  end
end
