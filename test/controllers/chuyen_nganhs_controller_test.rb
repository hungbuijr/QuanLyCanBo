require 'test_helper'

class ChuyenNganhsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chuyen_nganh = chuyen_nganhs(:one)
  end

  test "should get index" do
    get chuyen_nganhs_url
    assert_response :success
  end

  test "should get new" do
    get new_chuyen_nganh_url
    assert_response :success
  end

  test "should create chuyen_nganh" do
    assert_difference('ChuyenNganh.count') do
      post chuyen_nganhs_url, params: { chuyen_nganh: { description: @chuyen_nganh.description, enabled: @chuyen_nganh.enabled, name: @chuyen_nganh.name } }
    end

    assert_redirected_to chuyen_nganh_url(ChuyenNganh.last)
  end

  test "should show chuyen_nganh" do
    get chuyen_nganh_url(@chuyen_nganh)
    assert_response :success
  end

  test "should get edit" do
    get edit_chuyen_nganh_url(@chuyen_nganh)
    assert_response :success
  end

  test "should update chuyen_nganh" do
    patch chuyen_nganh_url(@chuyen_nganh), params: { chuyen_nganh: { description: @chuyen_nganh.description, enabled: @chuyen_nganh.enabled, name: @chuyen_nganh.name } }
    assert_redirected_to chuyen_nganh_url(@chuyen_nganh)
  end

  test "should destroy chuyen_nganh" do
    assert_difference('ChuyenNganh.count', -1) do
      delete chuyen_nganh_url(@chuyen_nganh)
    end

    assert_redirected_to chuyen_nganhs_url
  end
end
