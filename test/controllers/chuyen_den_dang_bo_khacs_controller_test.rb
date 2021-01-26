require 'test_helper'

class ChuyenDenDangBoKhacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chuyen_den_dang_bo_khac = chuyen_den_dang_bo_khacs(:one)
  end

  test "should get index" do
    get chuyen_den_dang_bo_khacs_url
    assert_response :success
  end

  test "should get new" do
    get new_chuyen_den_dang_bo_khac_url
    assert_response :success
  end

  test "should create chuyen_den_dang_bo_khac" do
    assert_difference('ChuyenDenDangBoKhac.count') do
      post chuyen_den_dang_bo_khacs_url, params: { chuyen_den_dang_bo_khac: { description: @chuyen_den_dang_bo_khac.description, enabled: @chuyen_den_dang_bo_khac.enabled, name: @chuyen_den_dang_bo_khac.name, ngay_chuyen_di: @chuyen_den_dang_bo_khac.ngay_chuyen_di } }
    end

    assert_redirected_to chuyen_den_dang_bo_khac_url(ChuyenDenDangBoKhac.last)
  end

  test "should show chuyen_den_dang_bo_khac" do
    get chuyen_den_dang_bo_khac_url(@chuyen_den_dang_bo_khac)
    assert_response :success
  end

  test "should get edit" do
    get edit_chuyen_den_dang_bo_khac_url(@chuyen_den_dang_bo_khac)
    assert_response :success
  end

  test "should update chuyen_den_dang_bo_khac" do
    patch chuyen_den_dang_bo_khac_url(@chuyen_den_dang_bo_khac), params: { chuyen_den_dang_bo_khac: { description: @chuyen_den_dang_bo_khac.description, enabled: @chuyen_den_dang_bo_khac.enabled, name: @chuyen_den_dang_bo_khac.name, ngay_chuyen_di: @chuyen_den_dang_bo_khac.ngay_chuyen_di } }
    assert_redirected_to chuyen_den_dang_bo_khac_url(@chuyen_den_dang_bo_khac)
  end

  test "should destroy chuyen_den_dang_bo_khac" do
    assert_difference('ChuyenDenDangBoKhac.count', -1) do
      delete chuyen_den_dang_bo_khac_url(@chuyen_den_dang_bo_khac)
    end

    assert_redirected_to chuyen_den_dang_bo_khacs_url
  end
end
