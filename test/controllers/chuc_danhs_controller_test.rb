require 'test_helper'

class ChucDanhsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chuc_danh = chuc_danhs(:one)
  end

  test "should get index" do
    get chuc_danhs_url
    assert_response :success
  end

  test "should get new" do
    get new_chuc_danh_url
    assert_response :success
  end

  test "should create chuc_danh" do
    assert_difference('ChucDanh.count') do
      post chuc_danhs_url, params: { chuc_danh: { description: @chuc_danh.description, enabled: @chuc_danh.enabled, name: @chuc_danh.name } }
    end

    assert_redirected_to chuc_danh_url(ChucDanh.last)
  end

  test "should show chuc_danh" do
    get chuc_danh_url(@chuc_danh)
    assert_response :success
  end

  test "should get edit" do
    get edit_chuc_danh_url(@chuc_danh)
    assert_response :success
  end

  test "should update chuc_danh" do
    patch chuc_danh_url(@chuc_danh), params: { chuc_danh: { description: @chuc_danh.description, enabled: @chuc_danh.enabled, name: @chuc_danh.name } }
    assert_redirected_to chuc_danh_url(@chuc_danh)
  end

  test "should destroy chuc_danh" do
    assert_difference('ChucDanh.count', -1) do
      delete chuc_danh_url(@chuc_danh)
    end

    assert_redirected_to chuc_danhs_url
  end
end
