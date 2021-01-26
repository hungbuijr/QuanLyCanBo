require 'test_helper'

class ChuyenTuDangBoKhacDensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chuyen_tu_dang_bo_khac_den = chuyen_tu_dang_bo_khac_dens(:one)
  end

  test "should get index" do
    get chuyen_tu_dang_bo_khac_dens_url
    assert_response :success
  end

  test "should get new" do
    get new_chuyen_tu_dang_bo_khac_den_url
    assert_response :success
  end

  test "should create chuyen_tu_dang_bo_khac_den" do
    assert_difference('ChuyenTuDangBoKhacDen.count') do
      post chuyen_tu_dang_bo_khac_dens_url, params: { chuyen_tu_dang_bo_khac_den: { description: @chuyen_tu_dang_bo_khac_den.description, enabled: @chuyen_tu_dang_bo_khac_den.enabled, name: @chuyen_tu_dang_bo_khac_den.name, ngay_chuyen_den: @chuyen_tu_dang_bo_khac_den.ngay_chuyen_den } }
    end

    assert_redirected_to chuyen_tu_dang_bo_khac_den_url(ChuyenTuDangBoKhacDen.last)
  end

  test "should show chuyen_tu_dang_bo_khac_den" do
    get chuyen_tu_dang_bo_khac_den_url(@chuyen_tu_dang_bo_khac_den)
    assert_response :success
  end

  test "should get edit" do
    get edit_chuyen_tu_dang_bo_khac_den_url(@chuyen_tu_dang_bo_khac_den)
    assert_response :success
  end

  test "should update chuyen_tu_dang_bo_khac_den" do
    patch chuyen_tu_dang_bo_khac_den_url(@chuyen_tu_dang_bo_khac_den), params: { chuyen_tu_dang_bo_khac_den: { description: @chuyen_tu_dang_bo_khac_den.description, enabled: @chuyen_tu_dang_bo_khac_den.enabled, name: @chuyen_tu_dang_bo_khac_den.name, ngay_chuyen_den: @chuyen_tu_dang_bo_khac_den.ngay_chuyen_den } }
    assert_redirected_to chuyen_tu_dang_bo_khac_den_url(@chuyen_tu_dang_bo_khac_den)
  end

  test "should destroy chuyen_tu_dang_bo_khac_den" do
    assert_difference('ChuyenTuDangBoKhacDen.count', -1) do
      delete chuyen_tu_dang_bo_khac_den_url(@chuyen_tu_dang_bo_khac_den)
    end

    assert_redirected_to chuyen_tu_dang_bo_khac_dens_url
  end
end
