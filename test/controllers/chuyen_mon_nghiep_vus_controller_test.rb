require 'test_helper'

class ChuyenMonNghiepVusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chuyen_mon_nghiep_vu = chuyen_mon_nghiep_vus(:one)
  end

  test "should get index" do
    get chuyen_mon_nghiep_vus_url
    assert_response :success
  end

  test "should get new" do
    get new_chuyen_mon_nghiep_vu_url
    assert_response :success
  end

  test "should create chuyen_mon_nghiep_vu" do
    assert_difference('ChuyenMonNghiepVu.count') do
      post chuyen_mon_nghiep_vus_url, params: { chuyen_mon_nghiep_vu: { description: @chuyen_mon_nghiep_vu.description, enabled: @chuyen_mon_nghiep_vu.enabled, name: @chuyen_mon_nghiep_vu.name } }
    end

    assert_redirected_to chuyen_mon_nghiep_vu_url(ChuyenMonNghiepVu.last)
  end

  test "should show chuyen_mon_nghiep_vu" do
    get chuyen_mon_nghiep_vu_url(@chuyen_mon_nghiep_vu)
    assert_response :success
  end

  test "should get edit" do
    get edit_chuyen_mon_nghiep_vu_url(@chuyen_mon_nghiep_vu)
    assert_response :success
  end

  test "should update chuyen_mon_nghiep_vu" do
    patch chuyen_mon_nghiep_vu_url(@chuyen_mon_nghiep_vu), params: { chuyen_mon_nghiep_vu: { description: @chuyen_mon_nghiep_vu.description, enabled: @chuyen_mon_nghiep_vu.enabled, name: @chuyen_mon_nghiep_vu.name } }
    assert_redirected_to chuyen_mon_nghiep_vu_url(@chuyen_mon_nghiep_vu)
  end

  test "should destroy chuyen_mon_nghiep_vu" do
    assert_difference('ChuyenMonNghiepVu.count', -1) do
      delete chuyen_mon_nghiep_vu_url(@chuyen_mon_nghiep_vu)
    end

    assert_redirected_to chuyen_mon_nghiep_vus_url
  end
end
