# frozen_string_literal: true

require 'test_helper'

class IssuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issue = create(:issue)
  end

  test 'should get index' do
    get markets_url
    assert_response :success
  end
end
