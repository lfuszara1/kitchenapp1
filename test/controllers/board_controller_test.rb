# frozen_string_literal: true

require 'test_helper'

class BoardControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  test 'logged in should get show' do
    sign_in users(:one)
    get :show
    assert_response :success
  end

  test 'not authenticated should get redirect' do
    get :show
    assert_response :redirect
  end

end
