require 'test_helper'

class RaKhoiDangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ra_khoi_dang = ra_khoi_dangs(:one)
  end

  test "should get index" do
    get ra_khoi_dangs_url
    assert_response :success
  end

  test "should get new" do
    get new_ra_khoi_dang_url
    assert_response :success
  end

  test "should create ra_khoi_dang" do
    assert_difference('RaKhoiDang.count') do
      post ra_khoi_dangs_url, params: { ra_khoi_dang: { description: @ra_khoi_dang.description, enabled: @ra_khoi_dang.enabled, hinh_thuc_ra_khoi_dang: @ra_khoi_dang.hinh_thuc_ra_khoi_dang, name: @ra_khoi_dang.name, ngay_ra_khoi_dang: @ra_khoi_dang.ngay_ra_khoi_dang } }
    end

    assert_redirected_to ra_khoi_dang_url(RaKhoiDang.last)
  end

  test "should show ra_khoi_dang" do
    get ra_khoi_dang_url(@ra_khoi_dang)
    assert_response :success
  end

  test "should get edit" do
    get edit_ra_khoi_dang_url(@ra_khoi_dang)
    assert_response :success
  end

  test "should update ra_khoi_dang" do
    patch ra_khoi_dang_url(@ra_khoi_dang), params: { ra_khoi_dang: { description: @ra_khoi_dang.description, enabled: @ra_khoi_dang.enabled, hinh_thuc_ra_khoi_dang: @ra_khoi_dang.hinh_thuc_ra_khoi_dang, name: @ra_khoi_dang.name, ngay_ra_khoi_dang: @ra_khoi_dang.ngay_ra_khoi_dang } }
    assert_redirected_to ra_khoi_dang_url(@ra_khoi_dang)
  end

  test "should destroy ra_khoi_dang" do
    assert_difference('RaKhoiDang.count', -1) do
      delete ra_khoi_dang_url(@ra_khoi_dang)
    end

    assert_redirected_to ra_khoi_dangs_url
  end
end
