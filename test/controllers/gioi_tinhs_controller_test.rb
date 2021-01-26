require 'test_helper'

class GioiTinhsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gioi_tinh = gioi_tinhs(:one)
  end

  test "should get index" do
    get gioi_tinhs_url
    assert_response :success
  end

  test "should get new" do
    get new_gioi_tinh_url
    assert_response :success
  end

  test "should create gioi_tinh" do
    assert_difference('GioiTinh.count') do
      post gioi_tinhs_url, params: { gioi_tinh: { description: @gioi_tinh.description, enabled: @gioi_tinh.enabled, name: @gioi_tinh.name } }
    end

    assert_redirected_to gioi_tinh_url(GioiTinh.last)
  end

  test "should show gioi_tinh" do
    get gioi_tinh_url(@gioi_tinh)
    assert_response :success
  end

  test "should get edit" do
    get edit_gioi_tinh_url(@gioi_tinh)
    assert_response :success
  end

  test "should update gioi_tinh" do
    patch gioi_tinh_url(@gioi_tinh), params: { gioi_tinh: { description: @gioi_tinh.description, enabled: @gioi_tinh.enabled, name: @gioi_tinh.name } }
    assert_redirected_to gioi_tinh_url(@gioi_tinh)
  end

  test "should destroy gioi_tinh" do
    assert_difference('GioiTinh.count', -1) do
      delete gioi_tinh_url(@gioi_tinh)
    end

    assert_redirected_to gioi_tinhs_url
  end
end
