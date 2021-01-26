require 'test_helper'

class BoiDuongQuyHoachChoChucDanhsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boi_duong_quy_hoach_cho_chuc_danh = boi_duong_quy_hoach_cho_chuc_danhs(:one)
  end

  test "should get index" do
    get boi_duong_quy_hoach_cho_chuc_danhs_url
    assert_response :success
  end

  test "should get new" do
    get new_boi_duong_quy_hoach_cho_chuc_danh_url
    assert_response :success
  end

  test "should create boi_duong_quy_hoach_cho_chuc_danh" do
    assert_difference('BoiDuongQuyHoachChoChucDanh.count') do
      post boi_duong_quy_hoach_cho_chuc_danhs_url, params: { boi_duong_quy_hoach_cho_chuc_danh: { description: @boi_duong_quy_hoach_cho_chuc_danh.description, enabled: @boi_duong_quy_hoach_cho_chuc_danh.enabled, name: @boi_duong_quy_hoach_cho_chuc_danh.name } }
    end

    assert_redirected_to boi_duong_quy_hoach_cho_chuc_danh_url(BoiDuongQuyHoachChoChucDanh.last)
  end

  test "should show boi_duong_quy_hoach_cho_chuc_danh" do
    get boi_duong_quy_hoach_cho_chuc_danh_url(@boi_duong_quy_hoach_cho_chuc_danh)
    assert_response :success
  end

  test "should get edit" do
    get edit_boi_duong_quy_hoach_cho_chuc_danh_url(@boi_duong_quy_hoach_cho_chuc_danh)
    assert_response :success
  end

  test "should update boi_duong_quy_hoach_cho_chuc_danh" do
    patch boi_duong_quy_hoach_cho_chuc_danh_url(@boi_duong_quy_hoach_cho_chuc_danh), params: { boi_duong_quy_hoach_cho_chuc_danh: { description: @boi_duong_quy_hoach_cho_chuc_danh.description, enabled: @boi_duong_quy_hoach_cho_chuc_danh.enabled, name: @boi_duong_quy_hoach_cho_chuc_danh.name } }
    assert_redirected_to boi_duong_quy_hoach_cho_chuc_danh_url(@boi_duong_quy_hoach_cho_chuc_danh)
  end

  test "should destroy boi_duong_quy_hoach_cho_chuc_danh" do
    assert_difference('BoiDuongQuyHoachChoChucDanh.count', -1) do
      delete boi_duong_quy_hoach_cho_chuc_danh_url(@boi_duong_quy_hoach_cho_chuc_danh)
    end

    assert_redirected_to boi_duong_quy_hoach_cho_chuc_danhs_url
  end
end
