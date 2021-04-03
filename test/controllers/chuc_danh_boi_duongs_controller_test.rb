require 'test_helper'

class ChucDanhBoiDuongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chuc_danh_boi_duong = chuc_danh_boi_duongs(:one)
  end

  test "should get index" do
    get chuc_danh_boi_duongs_url
    assert_response :success
  end

  test "should get new" do
    get new_chuc_danh_boi_duong_url
    assert_response :success
  end

  test "should create chuc_danh_boi_duong" do
    assert_difference('ChucDanhBoiDuong.count') do
      post chuc_danh_boi_duongs_url, params: { chuc_danh_boi_duong: { description: @chuc_danh_boi_duong.description, enabled: @chuc_danh_boi_duong.enabled, name: @chuc_danh_boi_duong.name } }
    end

    assert_redirected_to chuc_danh_boi_duong_url(ChucDanhBoiDuong.last)
  end

  test "should show chuc_danh_boi_duong" do
    get chuc_danh_boi_duong_url(@chuc_danh_boi_duong)
    assert_response :success
  end

  test "should get edit" do
    get edit_chuc_danh_boi_duong_url(@chuc_danh_boi_duong)
    assert_response :success
  end

  test "should update chuc_danh_boi_duong" do
    patch chuc_danh_boi_duong_url(@chuc_danh_boi_duong), params: { chuc_danh_boi_duong: { description: @chuc_danh_boi_duong.description, enabled: @chuc_danh_boi_duong.enabled, name: @chuc_danh_boi_duong.name } }
    assert_redirected_to chuc_danh_boi_duong_url(@chuc_danh_boi_duong)
  end

  test "should destroy chuc_danh_boi_duong" do
    assert_difference('ChucDanhBoiDuong.count', -1) do
      delete chuc_danh_boi_duong_url(@chuc_danh_boi_duong)
    end

    assert_redirected_to chuc_danh_boi_duongs_url
  end
end
