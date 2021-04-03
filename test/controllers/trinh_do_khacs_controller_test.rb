require 'test_helper'

class TrinhDoKhacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trinh_do_khac = trinh_do_khacs(:one)
  end

  test "should get index" do
    get trinh_do_khacs_url
    assert_response :success
  end

  test "should get new" do
    get new_trinh_do_khac_url
    assert_response :success
  end

  test "should create trinh_do_khac" do
    assert_difference('TrinhDoKhac.count') do
      post trinh_do_khacs_url, params: { trinh_do_khac: { description: @trinh_do_khac.description, enabled: @trinh_do_khac.enabled, name: @trinh_do_khac.name } }
    end

    assert_redirected_to trinh_do_khac_url(TrinhDoKhac.last)
  end

  test "should show trinh_do_khac" do
    get trinh_do_khac_url(@trinh_do_khac)
    assert_response :success
  end

  test "should get edit" do
    get edit_trinh_do_khac_url(@trinh_do_khac)
    assert_response :success
  end

  test "should update trinh_do_khac" do
    patch trinh_do_khac_url(@trinh_do_khac), params: { trinh_do_khac: { description: @trinh_do_khac.description, enabled: @trinh_do_khac.enabled, name: @trinh_do_khac.name } }
    assert_redirected_to trinh_do_khac_url(@trinh_do_khac)
  end

  test "should destroy trinh_do_khac" do
    assert_difference('TrinhDoKhac.count', -1) do
      delete trinh_do_khac_url(@trinh_do_khac)
    end

    assert_redirected_to trinh_do_khacs_url
  end
end
