require 'test_helper'

class DangViensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dang_vien = dang_viens(:one)
  end

  test "should get index" do
    get dang_viens_url
    assert_response :success
  end

  test "should get new" do
    get new_dang_vien_url
    assert_response :success
  end

  test "should create dang_vien" do
    assert_difference('DangVien.count') do
      post dang_viens_url, params: { dang_vien: { description: @dang_vien.description, enabled: @dang_vien.enabled, name: @dang_vien.name, so_the_dang: @dang_vien.so_the_dang } }
    end

    assert_redirected_to dang_vien_url(DangVien.last)
  end

  test "should show dang_vien" do
    get dang_vien_url(@dang_vien)
    assert_response :success
  end

  test "should get edit" do
    get edit_dang_vien_url(@dang_vien)
    assert_response :success
  end

  test "should update dang_vien" do
    patch dang_vien_url(@dang_vien), params: { dang_vien: { description: @dang_vien.description, enabled: @dang_vien.enabled, name: @dang_vien.name, so_the_dang: @dang_vien.so_the_dang } }
    assert_redirected_to dang_vien_url(@dang_vien)
  end

  test "should destroy dang_vien" do
    assert_difference('DangVien.count', -1) do
      delete dang_vien_url(@dang_vien)
    end

    assert_redirected_to dang_viens_url
  end
end
