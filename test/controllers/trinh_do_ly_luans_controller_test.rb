require 'test_helper'

class TrinhDoLyLuansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trinh_do_ly_luan = trinh_do_ly_luans(:one)
  end

  test "should get index" do
    get trinh_do_ly_luans_url
    assert_response :success
  end

  test "should get new" do
    get new_trinh_do_ly_luan_url
    assert_response :success
  end

  test "should create trinh_do_ly_luan" do
    assert_difference('TrinhDoLyLuan.count') do
      post trinh_do_ly_luans_url, params: { trinh_do_ly_luan: { description: @trinh_do_ly_luan.description, enabled: @trinh_do_ly_luan.enabled, name: @trinh_do_ly_luan.name } }
    end

    assert_redirected_to trinh_do_ly_luan_url(TrinhDoLyLuan.last)
  end

  test "should show trinh_do_ly_luan" do
    get trinh_do_ly_luan_url(@trinh_do_ly_luan)
    assert_response :success
  end

  test "should get edit" do
    get edit_trinh_do_ly_luan_url(@trinh_do_ly_luan)
    assert_response :success
  end

  test "should update trinh_do_ly_luan" do
    patch trinh_do_ly_luan_url(@trinh_do_ly_luan), params: { trinh_do_ly_luan: { description: @trinh_do_ly_luan.description, enabled: @trinh_do_ly_luan.enabled, name: @trinh_do_ly_luan.name } }
    assert_redirected_to trinh_do_ly_luan_url(@trinh_do_ly_luan)
  end

  test "should destroy trinh_do_ly_luan" do
    assert_difference('TrinhDoLyLuan.count', -1) do
      delete trinh_do_ly_luan_url(@trinh_do_ly_luan)
    end

    assert_redirected_to trinh_do_ly_luans_url
  end
end
