require 'test_helper'

class ChucVusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chuc_vu = chuc_vus(:one)
  end

  test "should get index" do
    get chuc_vus_url
    assert_response :success
  end

  test "should get new" do
    get new_chuc_vu_url
    assert_response :success
  end

  test "should create chuc_vu" do
    assert_difference('ChucVu.count') do
      post chuc_vus_url, params: { chuc_vu: { description: @chuc_vu.description, enabled: @chuc_vu.enabled, name: @chuc_vu.name } }
    end

    assert_redirected_to chuc_vu_url(ChucVu.last)
  end

  test "should show chuc_vu" do
    get chuc_vu_url(@chuc_vu)
    assert_response :success
  end

  test "should get edit" do
    get edit_chuc_vu_url(@chuc_vu)
    assert_response :success
  end

  test "should update chuc_vu" do
    patch chuc_vu_url(@chuc_vu), params: { chuc_vu: { description: @chuc_vu.description, enabled: @chuc_vu.enabled, name: @chuc_vu.name } }
    assert_redirected_to chuc_vu_url(@chuc_vu)
  end

  test "should destroy chuc_vu" do
    assert_difference('ChucVu.count', -1) do
      delete chuc_vu_url(@chuc_vu)
    end

    assert_redirected_to chuc_vus_url
  end
end
