require 'test_helper'
include Devise::Test::IntegrationHelpers
class PrivateInfomationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @private_infomation = private_infomations(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get private_infomations_url
    assert_response :success
  end

  test "should get new" do
    get new_private_infomation_url
    assert_response :success
  end

  test "should create private_infomation" do
    assert_difference('PrivateInfomation.count') do
      post private_infomations_url, params: { private_infomation: { email: @private_infomation.email, gender: @private_infomation.gender, phone: @private_infomation.phone } }
    end

    assert_redirected_to private_infomation_url(PrivateInfomation.last)
  end

  test "should show private_infomation" do
    get private_infomation_url(@private_infomation)
    assert_response :success
  end

  test "should get edit" do
    get edit_private_infomation_url(@private_infomation)
    assert_response :success
  end

  test "should update private_infomation" do
    patch private_infomation_url(@private_infomation), params: { private_infomation: { email: @private_infomation.email, gender: @private_infomation.gender, phone: @private_infomation.phone } }
    assert_redirected_to private_infomation_url(@private_infomation)
  end

  test "should destroy private_infomation" do
    assert_difference('PrivateInfomation.count', -1) do
      delete private_infomation_url(@private_infomation)
    end

    assert_redirected_to private_infomations_url
  end
end
