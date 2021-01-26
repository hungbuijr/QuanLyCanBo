require 'test_helper'

class ChucDanhDaQuyHoachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chuc_danh_da_quy_hoach = chuc_danh_da_quy_hoaches(:one)
  end

  test "should get index" do
    get chuc_danh_da_quy_hoaches_url
    assert_response :success
  end

  test "should get new" do
    get new_chuc_danh_da_quy_hoach_url
    assert_response :success
  end

  test "should create chuc_danh_da_quy_hoach" do
    assert_difference('ChucDanhDaQuyHoach.count') do
      post chuc_danh_da_quy_hoaches_url, params: { chuc_danh_da_quy_hoach: { description: @chuc_danh_da_quy_hoach.description, enabled: @chuc_danh_da_quy_hoach.enabled, name: @chuc_danh_da_quy_hoach.name } }
    end

    assert_redirected_to chuc_danh_da_quy_hoach_url(ChucDanhDaQuyHoach.last)
  end

  test "should show chuc_danh_da_quy_hoach" do
    get chuc_danh_da_quy_hoach_url(@chuc_danh_da_quy_hoach)
    assert_response :success
  end

  test "should get edit" do
    get edit_chuc_danh_da_quy_hoach_url(@chuc_danh_da_quy_hoach)
    assert_response :success
  end

  test "should update chuc_danh_da_quy_hoach" do
    patch chuc_danh_da_quy_hoach_url(@chuc_danh_da_quy_hoach), params: { chuc_danh_da_quy_hoach: { description: @chuc_danh_da_quy_hoach.description, enabled: @chuc_danh_da_quy_hoach.enabled, name: @chuc_danh_da_quy_hoach.name } }
    assert_redirected_to chuc_danh_da_quy_hoach_url(@chuc_danh_da_quy_hoach)
  end

  test "should destroy chuc_danh_da_quy_hoach" do
    assert_difference('ChucDanhDaQuyHoach.count', -1) do
      delete chuc_danh_da_quy_hoach_url(@chuc_danh_da_quy_hoach)
    end

    assert_redirected_to chuc_danh_da_quy_hoaches_url
  end
end
