require 'test_helper'

class TrinhDoBoiDuongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trinh_do_boi_duong = trinh_do_boi_duongs(:one)
  end

  test "should get index" do
    get trinh_do_boi_duongs_url
    assert_response :success
  end

  test "should get new" do
    get new_trinh_do_boi_duong_url
    assert_response :success
  end

  test "should create trinh_do_boi_duong" do
    assert_difference('TrinhDoBoiDuong.count') do
      post trinh_do_boi_duongs_url, params: { trinh_do_boi_duong: { description: @trinh_do_boi_duong.description, enabled: @trinh_do_boi_duong.enabled, name: @trinh_do_boi_duong.name } }
    end

    assert_redirected_to trinh_do_boi_duong_url(TrinhDoBoiDuong.last)
  end

  test "should show trinh_do_boi_duong" do
    get trinh_do_boi_duong_url(@trinh_do_boi_duong)
    assert_response :success
  end

  test "should get edit" do
    get edit_trinh_do_boi_duong_url(@trinh_do_boi_duong)
    assert_response :success
  end

  test "should update trinh_do_boi_duong" do
    patch trinh_do_boi_duong_url(@trinh_do_boi_duong), params: { trinh_do_boi_duong: { description: @trinh_do_boi_duong.description, enabled: @trinh_do_boi_duong.enabled, name: @trinh_do_boi_duong.name } }
    assert_redirected_to trinh_do_boi_duong_url(@trinh_do_boi_duong)
  end

  test "should destroy trinh_do_boi_duong" do
    assert_difference('TrinhDoBoiDuong.count', -1) do
      delete trinh_do_boi_duong_url(@trinh_do_boi_duong)
    end

    assert_redirected_to trinh_do_boi_duongs_url
  end
end
